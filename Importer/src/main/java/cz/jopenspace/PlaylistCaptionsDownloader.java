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
import com.google.api.services.youtube.YouTube.Captions;
import com.google.api.services.youtube.YouTube.Captions.Download;
import com.google.api.services.youtube.YouTube.PlaylistItems;
import com.google.api.services.youtube.model.Caption;
import com.google.api.services.youtube.model.CaptionListResponse;
import com.google.api.services.youtube.model.PlaylistItem;
import com.google.api.services.youtube.model.PlaylistItemListResponse;

import java.io.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.stream.Collectors;

/**
 * Simple utility to download captions for all videos in a YouTube playlist
 * (only works for videos you are allowed to edit) and save them as plain text
 * files in the playlist order.
 *
 * Usage:
 *   java cz.jopenspace.PlaylistCaptionsDownloader <playlistId> <langHint en|cs|*> <outDir>
 *
 * Requirements:
 * - Place OAuth client file client_secret.json in the working directory.
 * - Enable "YouTube Data API v3" in Google Cloud Console.
 * - On first run, a browser window will open for OAuth consent.
 */
public class PlaylistCaptionsDownloader {

    private static final String CLIENT_SECRET_JSON = "client_secret.json";
    private static final List<String> SCOPES = List.of("https://www.googleapis.com/auth/youtube.force-ssl");

    public static void main(String[] args) throws Exception {
        if (args.length < 3) {
            System.err.println("Usage: java cz.jopenspace.PlaylistCaptionsDownloader <playlistId> <langHint en|cs|*> <outDir>");
            System.exit(1);
        }
        String playlistId = args[0];
        String langPref = args[1]; // "*" = first available
        Path outDir = Path.of(args[2]);
        Files.createDirectories(outDir);

        Credential cred = authorize();
        YouTube yt = youtubeService(cred);

        List<PlaylistEntry> entries = fetchPlaylistEntries(yt, playlistId);
        if (entries.isEmpty()) {
            System.out.println("No playlist items found.");
            return;
        }

        int pad = String.valueOf(entries.size()).length();
        int success = 0, skipped = 0;

        for (int i = 0; i < entries.size(); i++) {
            PlaylistEntry e = entries.get(i);
            String index = String.format(Locale.ROOT, "%0" + pad + "d", (e.position + 1));

            try {
                Path out = outDir.resolve(e.videoId + ".captions");
                if (Files.exists(out)) {
                    System.out.printf("[%s] %s — already exists, skipping.\n", index, e.title);
                    skipped++;
                    continue;
                }
                String text = downloadCaptionFileContent(yt, e.videoId, e.title, langPref);
                if (text == null || text.isBlank()) {
                    System.out.printf("[%s] %s — no captions available or empty.\n", index, e.title);
                    skipped++;
                    continue;
                }
                Files.writeString(out, text, StandardCharsets.UTF_8);
                System.out.printf("[%s] Saved %s\n", index, out.getFileName());
                success++;
            } catch (IOException ex) {
                System.out.printf("[%s] %s — ERROR: %s\n", index, e.title, ex.getMessage());
                skipped++;
            }
        }

        System.out.printf("Done. Saved %d file(s), skipped %d.\n", success, skipped);
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
                .setApplicationName("jopenspace-caption-downloader")
                .build();
    }

    private static List<PlaylistEntry> fetchPlaylistEntries(YouTube yt, String playlistId) throws IOException {
        List<PlaylistEntry> result = new ArrayList<>();
        String nextPageToken = null;
        do {
            PlaylistItems.List req = yt.playlistItems()
                    .list(List.of("snippet"))
                    .setPlaylistId(playlistId)
                    .setMaxResults(50L)
                    .setPageToken(nextPageToken);
            PlaylistItemListResponse resp = req.execute();
            if (resp.getItems() != null) {
                for (PlaylistItem it : resp.getItems()) {
                    if (it.getSnippet() == null || it.getSnippet().getResourceId() == null) continue;
                    String videoId = it.getSnippet().getResourceId().getVideoId();
                    String title = it.getSnippet().getTitle();
                    long position = it.getSnippet().getPosition() == null ? result.size() : it.getSnippet().getPosition();
                    result.add(new PlaylistEntry(videoId, title, (int) position));
                }
            }
            nextPageToken = resp.getNextPageToken();
        } while (nextPageToken != null);

        // Ensure playlist order by position
        result.sort(Comparator.comparingInt(e -> e.position));
        return result;
    }

    private static String downloadCaptionFileContent(YouTube yt, String videoId, String videoTitle, String langPref) throws IOException {
        Captions.List listReq = yt.captions().list(List.of("snippet"), videoId);
        CaptionListResponse listResp = listReq.execute();
        List<Caption> tracks = listResp.getItems();
        if (tracks == null || tracks.isEmpty()) {
            System.out.println("No captions found for video " + videoId);
            return null;
        } else {
            System.out.printf("Found %d caption track(s) for video %s: %s\n",
                tracks.size(),
                videoId,
                tracks.stream()
                    .map(it -> it.getSnippet().getLanguage())
                    .collect(Collectors.joining(", "))
            );
        }

        Caption chosen = tracks.stream()
                .filter(c -> "*".equals(langPref) || langPref.equalsIgnoreCase(c.getSnippet().getLanguage()))
                .findFirst()
                .orElse(tracks.get(0));

        Download dl = yt.captions().download(chosen.getId());
        dl.setTfmt("vtt");

        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        dl.executeMediaAndDownloadTo(baos);
        String vtt = new String(baos.toByteArray(), StandardCharsets.UTF_8);
        String plain = vttToPlainText(vtt);
        if (plain == null || plain.isBlank()) return null;

        String lang = chosen.getSnippet().getLanguage();
        StringBuilder sb = new StringBuilder();
        sb.append("### ").append(videoTitle).append('\n').append('\n');
        sb.append("Kind: captions Language: ").append(lang == null ? "" : lang).append('\n');
        sb.append(plain);
        return sb.toString();
    }

    private static String vttToPlainText(String vtt) {
        StringBuilder out = new StringBuilder();
        try (BufferedReader br = new BufferedReader(new StringReader(vtt))) {
            String line;
            boolean inCue = false;
            boolean hasTextInCue = false;
            while ((line = br.readLine()) != null) {
                String s = line.trim();

                // Skip WEBVTT header and block headers
                if (s.equalsIgnoreCase("WEBVTT")) continue;
                if (s.matches("^(NOTE|STYLE|REGION)(?:$|\\s).*")) continue;

                // Blank line ends a cue
                if (s.isEmpty()) {
                    if (inCue && hasTextInCue) {
                        out.append('\n'); // end delimiter at end of caption item
                    }
                    inCue = false;
                    hasTextInCue = false;
                    continue;
                }

                // Timecode line starts a cue
                if (s.contains("-->")) {
                    if (inCue && hasTextInCue) {
                        out.append('\n');
                    }
                    inCue = true;
                    hasTextInCue = false;
                    continue;
                }

                // Numeric cue id
                if (s.matches("^\\d{1,6}$")) continue;

                // Text line
                s = s.replaceAll("<[^>]+>", "");
                if (s.isEmpty()) continue;
                if (!inCue) inCue = true;
                if (hasTextInCue) out.append(' ');
                out.append(s);
                hasTextInCue = true;
            }
            // EOF: close any open cue
            if (inCue && hasTextInCue) {
                out.append('\n');
            }
        } catch (IOException ignored) {
        }
        // Normalize space before newlines and trim trailing newlines
        String result = out.toString()
                .replaceAll("[ \\t\\x0B\\f\\r]+\\n", "\n")
                .replaceAll("\\n+$", "");
        return result;
    }

    private record PlaylistEntry(String videoId, String title, int position) {}
}
