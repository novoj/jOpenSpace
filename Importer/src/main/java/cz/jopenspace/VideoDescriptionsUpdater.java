package cz.jopenspace;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.extensions.java6.auth.oauth2.AuthorizationCodeInstalledApp;
import com.google.api.client.extensions.jetty.auth.oauth2.LocalServerReceiver;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.util.store.FileDataStoreFactory;
import com.google.api.services.youtube.YouTube;
import com.google.api.services.youtube.YouTube.Builder;
import com.google.api.services.youtube.model.Video;
import com.google.api.services.youtube.model.VideoListResponse;
import com.google.api.services.youtube.model.VideoSnippet;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.stream.Collectors;

/**
 * Utility that scans a directory for *.txt files. For each file, it treats the
 * file name (without extension) as a YouTube video ID and updates the video's
 * description to the text content of the file.
 *
 * Usage:
 *   java cz.jopenspace.VideoDescriptionsUpdater <inputDir>
 *
 * Requirements:
 * - Place OAuth client file client_secret.json in the working directory.
 * - Enable "YouTube Data API v3" in Google Cloud Console.
 * - On first run, a browser window will open for OAuth consent.
 */
public class VideoDescriptionsUpdater {

    private static final String CLIENT_SECRET_JSON = "client_secret.json";
    private static final List<String> SCOPES = List.of("https://www.googleapis.com/auth/youtube.force-ssl");
    private static final int DESCRIPTION_LIMIT = 5000; // YouTube description character limit

    public static void main(String[] args) throws Exception {
        if (args.length < 1) {
            System.err.println("Usage: java cz.jopenspace.VideoDescriptionsUpdater <inputDir>");
            System.exit(1);
        }
        Path inDir = Path.of(args[0]);
        if (!Files.isDirectory(inDir)) {
            System.err.println("Input path is not a directory: " + inDir);
            System.exit(2);
        }

        Credential cred = authorize();
        YouTube yt = youtubeService(cred);

        List<Path> files;
        try {
            files = Files.list(inDir)
                    .filter(p -> p.getFileName().toString().toLowerCase(Locale.ROOT).endsWith(".txt"))
                    .sorted()
                    .collect(Collectors.toCollection(ArrayList::new));
        } catch (IOException e) {
            System.err.println("Failed to list directory: " + e.getMessage());
            return;
        }

        if (files.isEmpty()) {
            System.out.println("No *.txt files found in: " + inDir);
            return;
        }

        int width = String.valueOf(files.size()).length();
        int success = 0, skipped = 0, failed = 0;

        for (int i = 0; i < files.size(); i++) {
            Path f = files.get(i);
            String idx = String.format(Locale.ROOT, "%0" + width + "d", i + 1);
            String fileName = f.getFileName().toString();
            String baseName = fileName.substring(0, fileName.length() - 4); // strip .txt
            String videoId = baseName;
            try {
                String text = Files.readString(f, StandardCharsets.UTF_8);
                if (text == null) text = "";
                text = normalizeNewlines(text).trim();
                if (text.length() > DESCRIPTION_LIMIT) {
                    System.out.printf("[%s] %s — description is %d chars, exceeds %d. Truncating.\n",
                            idx, videoId, text.length(), DESCRIPTION_LIMIT);
                    text = text.substring(0, DESCRIPTION_LIMIT);
                }

                VideoListResponse list = yt.videos()
                        .list(List.of("snippet"))
                        .setId(List.of(videoId))
                        .execute();

                if (list.getItems() == null || list.getItems().isEmpty()) {
                    System.out.printf("[%s] %s — video not found, skipping.\n", idx, videoId);
                    skipped++;
                    continue;
                }

                Video existing = list.getItems().get(0);
                VideoSnippet sn = existing.getSnippet();
                if (sn == null) {
                    System.out.printf("[%s] %s — snippet missing, skipping.\n", idx, videoId);
                    skipped++;
                    continue;
                }

                sn.setDescription(text);

                Video toUpdate = new Video();
                toUpdate.setId(videoId);
                toUpdate.setSnippet(sn);

                yt.videos().update(List.of("snippet"), toUpdate).execute();
                System.out.printf("[%s] %s — description updated.\n", idx, videoId);
                success++;

            } catch (IOException ex) {
                System.out.printf("[%s] %s — ERROR: %s\n", idx, videoId, ex.getMessage());
                failed++;
            }
        }

        System.out.printf("Done. Updated %d video(s), skipped %d, failed %d.\n", success, skipped, failed);
    }

    private static String normalizeNewlines(String s) {
        // Convert CRLF and CR to LF to avoid accidental CR characters
        return s.replace("\r\n", "\n").replace('\r', '\n');
    }

    private static Credential authorize() throws Exception {
        var httpTransport = GoogleNetHttpTransport.newTrustedTransport();
        var jsonFactory = JacksonFactory.getDefaultInstance();

        try (Reader r = new InputStreamReader(new FileInputStream(CLIENT_SECRET_JSON), StandardCharsets.UTF_8)) {
            GoogleClientSecrets secrets = GoogleClientSecrets.load(jsonFactory, r);
            GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(
                    httpTransport, jsonFactory, secrets, SCOPES)
                    .setDataStoreFactory(new FileDataStoreFactory(new File("tokens")))
                    .setAccessType("offline")
                    .build();
            return new AuthorizationCodeInstalledApp(flow, new LocalServerReceiver.Builder().setPort(8888).build())
                    .authorize("user");
        }
    }

    private static YouTube youtubeService(Credential credential) throws GeneralSecurityException, IOException {
        var httpTransport = GoogleNetHttpTransport.newTrustedTransport();
        return new Builder(httpTransport, JacksonFactory.getDefaultInstance(), credential)
                .setApplicationName("jopenspace-description-updater")
                .build();
    }
}
