package cz.jopenspace;


import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.youtube.YouTube;
import com.google.api.services.youtube.YouTube.Builder;
import com.google.api.services.youtube.YouTube.PlaylistItems;
import com.google.api.services.youtube.model.PlaylistItem;
import com.google.api.services.youtube.model.PlaylistItemListResponse;
import com.opencsv.CSVReader;
import com.opencsv.CSVWriter;
import com.opencsv.exceptions.CsvException;
import com.vladsch.flexmark.html.HtmlRenderer;
import com.vladsch.flexmark.parser.Parser;
import com.vladsch.flexmark.util.data.MutableDataSet;
import org.apache.commons.text.similarity.JaroWinklerDistance;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Command-line importer that enriches the jOpenSpace talks CSV with data pulled from a YouTube playlist.
 *
 * It:
 * - fetches all items from a configured YouTube playlist using the Google Data API,
 * - converts each video's Markdown description to HTML using Flexmark,
 * - reads a source CSV expected to contain columns: Prednasejici, Nazev, Anotace, YouTube,
 * - fuzzy-matches each CSV row to a playlist video whose title follows
 *   the pattern "jOpenSpace 2024 - {Prednasejici} - {Nazev}" using Jaro-Winkler distance,
 * - when a good match is found, fills Anotace with the HTML description and YouTube with the video URL,
 * - writes the updated data to the target CSV file.
 *
 * Notes:
 * - The source/target CSV paths, API key and playlist ID are currently hard-coded.
 * - Private videos are ignored.
 * - Matching uses a 0.75 Jaro-Winkler threshold and only considers the best match per row.
 *
 * Usage: java cz.jopenspace.CsvSyncer <sourceCsvPath> <targetCsvPath> (or run without args to use defaults).
 *
 * @author Jan Novotný (novotny@fg.cz), FG Forrest a.s. (c) 2024
 */
public class CsvSyncer {

    public static void main(String[] args) throws GeneralSecurityException, IOException, CsvException {
        String apiKey = loadApiKey();

        String sourcePath = null;
        String targetPath = null;
        if (args != null && args.length >= 2) {
            sourcePath = args[0];
            targetPath = args[1];
        } else {
            System.out.println("Usage: java cz.jopenspace.CsvSyncer <sourceCsvPath> <targetCsvPath>");
            System.out.println("No arguments provided, falling back to defaults:");
            System.out.println(" - source: " + sourcePath);
            System.out.println(" - target: " + targetPath);
        }

        // Step 1: Fetch the YouTube playlist details
        List<YouTubeVideo> youtubeVideos = fetchYouTubeVideos(apiKey, "PLd8Uq2Jp0zZ27rayYElVck-Th8m2EaF6Z");

        // Step 2: Read the CSV file
        List<String[]> csvData = readCsv(sourcePath);

        // Step 3: Update CSV file with YouTube details based on partial matching
        updateCsvWithYouTubeData(csvData, youtubeVideos);

        // Step 4: Write the updated CSV back to file
        writeCsv(targetPath, csvData);
    }

    public static List<YouTubeVideo> fetchYouTubeVideos(String apiKey, String playlistId) throws GeneralSecurityException, IOException {
        YouTube youtubeService = new Builder(GoogleNetHttpTransport.newTrustedTransport(), JacksonFactory.getDefaultInstance(), null)
                .setApplicationName("youtube-playlist-fetcher")
                .build();

        List<YouTubeVideo> videoList = new ArrayList<>();
        String nextPageToken = null;

        do {
            // API call to fetch the playlist items
            PlaylistItems.List request = youtubeService.playlistItems()
                    .list(List.of("snippet"))
                    .setPlaylistId(playlistId)
                    .setMaxResults(50L)
                    .setKey(apiKey)
                    .setPageToken(nextPageToken);

            PlaylistItemListResponse response = request.execute();
            List<PlaylistItem> items = response.getItems();

            // Extract video information
            for (PlaylistItem item : items) {
                if (item.getSnippet() != null && item.getSnippet().getTitle() != null && item.getSnippet().getResourceId() != null) {
                    String title = item.getSnippet().getTitle();
                    if (title.contains("Private video")) {
                        continue;
                    }
                    String videoId = item.getSnippet().getResourceId().getVideoId();
                    String description = convertMarkdownToHtml(item.getSnippet().getDescription());
                    String videoUrl = "https://www.youtube.com/watch?v=" + videoId;

                    videoList.add(new YouTubeVideo(title, videoUrl, description));
                }
            }

            nextPageToken = response.getNextPageToken();
        } while (nextPageToken != null);

        return videoList;
    }

    public static String convertMarkdownToHtml(String markdown) {
        MutableDataSet options = new MutableDataSet();
        Parser parser = Parser.builder(options).build();
        HtmlRenderer renderer = HtmlRenderer.builder(options).build();

        return renderer.render(parser.parse(markdown));
    }

    public static List<String[]> readCsv(String filePath) throws IOException, CsvException {
        try (CSVReader reader = new CSVReader(new FileReader(filePath))) {
            return reader.readAll();
        }
    }

    public static String loadApiKey() throws IOException {
        File file = new File("youtube_api_key.txt");
        if (!file.exists()) {
            throw new IOException("API key file 'api_key.txt' not found in working directory: " + file.getAbsolutePath());
        }
        StringBuilder sb = new StringBuilder();
        BufferedReader reader = null;
        try {
            reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
            String line;
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
        } finally {
            if (reader != null) {
                try { reader.close(); } catch (IOException ignored) {}
            }
        }
        String key = sb.toString().trim();
        if (key.isEmpty()) {
            throw new IOException("API key file 'api_key.txt' is empty: " + file.getAbsolutePath());
        }
        return key;
    }

    public static void updateCsvWithYouTubeData(List<String[]> csvData, List<YouTubeVideo> youtubeVideos) {
        JaroWinklerDistance distance = new JaroWinklerDistance();

        // Identify the column indices for the relevant columns
        String[] header = csvData.get(0);
        int prednasejiciIdx = -1, nazevIdx = -1, anotaceIdx = -1, youtubeIdx = -1;

        for (int i = 0; i < header.length; i++) {
            if (header[i].equalsIgnoreCase("Prednasejici")) prednasejiciIdx = i;
            if (header[i].equalsIgnoreCase("Nazev")) nazevIdx = i;
            if (header[i].equalsIgnoreCase("Anotace")) anotaceIdx = i;
            if (header[i].equalsIgnoreCase("YouTube")) youtubeIdx = i;
        }

        // Iterate through the CSV rows and update based on partial matching
        for (int i = 1; i < csvData.size(); i++) {
            String[] row = csvData.get(i);
            String prednasejici = row[prednasejiciIdx];
            String nazev = row[nazevIdx];

            YouTubeVideo bestMatch = null;
            double bestScore = 0.0;
            Pattern pattern = Pattern.compile("jOpenSpace 2024 - (.*)? - (.*)?", Pattern.CASE_INSENSITIVE);

            for (YouTubeVideo video : youtubeVideos) {
                // Use the Jaro-Winkler distance for partial matching
                final String title = video.getTitle();
                final Matcher matcher = pattern.matcher(title);
                if (matcher.matches()) {
                    double score1 = distance.apply(prednasejici, matcher.group(1));
                    double score2 = distance.apply(nazev, matcher.group(2));

                    double maxScore = Math.max(score1, score2);

                    if (maxScore > bestScore && maxScore > 0.75) {  // Use a threshold to ensure a good match
                        bestScore = maxScore;
                        bestMatch = video;
                    }
                } else {
                    System.out.println("No match found for: " + title);
                    System.exit(1);
                }
            }

            // If a match is found, update the "Anotace" and "YouTube" columns
            if (bestMatch != null) {
                row[anotaceIdx] = bestMatch.getDescription();
                row[youtubeIdx] = bestMatch.getUrl();
            } else {
                System.out.println("No match found for: " + prednasejici + " - " + nazev);
            }
        }
    }

    public static void writeCsv(String filePath, List<String[]> csvData) throws IOException {
        try (CSVWriter writer = new CSVWriter(new FileWriter(filePath))) {
            writer.writeAll(csvData);
        }
    }

    // Helper class to store YouTube video data
    static class YouTubeVideo {
        private final String title;
        private final String url;
        private final String description;

        public YouTubeVideo(String title, String url, String description) {
            this.title = title;
            this.url = url;
            this.description = description;
        }

        public String getTitle() {
            return title;
        }

        public String getUrl() {
            return url;
        }

        public String getDescription() {
            return description;
        }
    }

}