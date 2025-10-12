package cz.jopenspace;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.time.Duration;
import java.util.Arrays;
import java.util.Locale;
import java.util.function.Consumer;

/**
 * Goes through input directory, finds MP3 files and generates SRT subtitles using OpenAI Speech-To-Text API.
 * - Input: MP3 files in a directory.
 * - Output: for each input foo.mp3, a foo.srt file next to it with generated subtitles.
 *
 * Usage:
 *   java cz.jopenspace.SubtitleTranscriber [inputDir]
 *
 * API key lookup (same as SubtitleAbstractor):
 *   - env OPENAI_API_KEY
 *   - system property -Dopenai.api.key
 *   - file ./open_ai_api_key.txt
 */
public class SubtitleTranscriber {

    private static final String OUTPUT_EXTENSION = ".srt";

    private static final String OPENAI_STT_URL = "https://api.openai.com/v1/audio/transcriptions";
    private static final String OPENAI_ASR_MODEL = "whisper-1";

    private static final boolean SKIP_IF_EXISTS = Boolean.parseBoolean(
            System.getProperty("transcribe.skipIfExists", System.getenv().getOrDefault("TRANSCRIBE_SKIP_IF_EXISTS", "true"))
    );

    private static final long SLEEP_BETWEEN_REQUESTS_MS = Long.getLong(
            "transcribe.sleepMs",
            Long.parseLong(System.getenv().getOrDefault("TRANSCRIBE_SLEEP_MS", "500"))
    );

    // Comma-separated list of granularities to request when using verbose_json (supported: segment, word)
    private static final String OPENAI_ASR_TIMESTAMP_GRANULARITIES = System.getProperty(
            "openai.asr.timestamp_granularities",
            System.getenv().getOrDefault("OPENAI_ASR_TIMESTAMP_GRANULARITIES", "segment")
    );

    public static void main(String[] args) {
        if (args == null || args.length == 0 || args[0] == null || args[0].isBlank()) {
            System.err.println("Usage: java cz.jopenspace.SubtitleTranscriber [inputDir]");
            System.exit(1);
        }

        String inputDir = args[0];

        String apiKey = getApiKey();
        if (apiKey == null || apiKey.isBlank()) {
            System.err.println("[ERROR] Missing OpenAI API key. Set OPENAI_API_KEY, -Dopenai.api.key, or put the key in ./open_ai_api_key.txt.");
            System.exit(2);
        }

        File dir = new File(inputDir);
        if (!dir.exists() || !dir.isDirectory()) {
            System.err.println("[ERROR] Input directory not found or not a directory: " + dir.getAbsolutePath());
            System.exit(3);
        }

        File[] inputs = dir.listFiles((d, name) -> name.toLowerCase(Locale.ROOT).endsWith(".mp3"));
        if (inputs == null) inputs = new File[0];
        Arrays.sort(inputs, (a, b) -> a.getName().compareToIgnoreCase(b.getName()));

        int ok = 0, skipped = 0, failed = 0;
        for (File in : inputs) {
            try {
                File out = new File(in.getParentFile(), stripExtension(in.getName()) + OUTPUT_EXTENSION);
                if (SKIP_IF_EXISTS && out.exists()) {
                    System.out.println("[SKIP] SRT exists: " + out.getName());
                    // Ensure markdown exists for existing SRT
                    try { ensureMarkdownForSrt(out); } catch (Exception e) { System.out.println("[WARN] Failed to create MD for existing SRT " + out.getName() + ": " + e.getMessage()); }
                    skipped++;
                    continue;
                }

                String srt = requestTranscription(apiKey, in);
                if (srt == null || srt.isBlank()) {
                    System.out.println("[WARN] Empty transcription for " + in.getName());
                    failed++;
                    continue;
                }
                Files.writeString(out.toPath(), srt.trim() + System.lineSeparator(), StandardCharsets.UTF_8);
                System.out.println("[OK] Saved SRT: " + out.getName());
                // Also create/update markdown transcript if missing
                try { ensureMarkdownForSrt(out); } catch (Exception e) { System.out.println("[WARN] Failed to create MD for " + out.getName() + ": " + e.getMessage()); }
                ok++;

                if (SLEEP_BETWEEN_REQUESTS_MS > 0) Thread.sleep(SLEEP_BETWEEN_REQUESTS_MS);
            } catch (Exception ex) {
                System.out.println("[ERROR] Failed to transcribe " + in.getName() + ": " + ex.getMessage());
                failed++;
            }
        }

        // After processing MP3s, ensure markdown exists for any SRT in the directory
        File[] srtFiles = dir.listFiles((d, name) -> name.toLowerCase(Locale.ROOT).endsWith(".srt"));
        if (srtFiles != null) {
            Arrays.sort(srtFiles, (a, b) -> a.getName().compareToIgnoreCase(b.getName()));
            for (File srtFile : srtFiles) {
                try { ensureMarkdownForSrt(srtFile); } catch (Exception e) { System.out.println("[WARN] Failed to create MD for " + srtFile.getName() + ": " + e.getMessage()); }
            }
        }

        System.out.println("Done. SRT saved: " + ok + ", skipped: " + skipped + ", failed: " + failed);
    }

    private static String stripExtension(String name) {
        int dot = name.lastIndexOf('.');
        return dot > 0 ? name.substring(0, dot) : name;
    }

    private static String getApiKey() {
        String key = System.getenv("OPENAI_API_KEY");
        if (key == null || key.isBlank()) key = System.getProperty("openai.api.key");
        if (key == null || key.isBlank()) {
            File f = new File("open_ai_api_key.txt");
            if (f.exists() && f.isFile()) {
                try {
                    String fromFile = Files.readString(f.toPath(), StandardCharsets.UTF_8).trim();
                    if (!fromFile.isBlank()) {
                        key = fromFile;
                    }
                } catch (IOException e) {
                    System.err.println("[WARN] Failed to read open_ai_api_key.txt: " + e.getMessage());
                }
            }
        }
        return key;
    }

    /**
     * Calls OpenAI Audio Transcriptions API and returns SRT text.
     * - If the chosen model supports SRT, requests response_format=srt and returns it as-is.
     * - If the model does not support SRT, uses json/text and converts to SRT.
     * Language is autodetected by the API if not specified.
     */
    public static String requestTranscription(String apiKey, File audioFile) throws IOException {
        if (apiKey == null || apiKey.isBlank()) throw new IllegalArgumentException("apiKey");
        if (audioFile == null || !audioFile.isFile()) throw new FileNotFoundException("Audio file not found: " + audioFile);

        return doSttMultipart(apiKey, audioFile, "srt");
    }

    private static String doSttMultipart(String apiKey, File audioFile, String responseFormat) throws IOException {
        String boundary = "----Boundary" + System.currentTimeMillis();
        HttpURLConnection con = (HttpURLConnection) new URL(OPENAI_STT_URL).openConnection();
        con.setRequestMethod("POST");
        con.setConnectTimeout((int) Duration.ofSeconds(20).toMillis());
        con.setReadTimeout((int) Duration.ofMinutes(10).toMillis());
        con.setDoOutput(true);
        con.setRequestProperty("Authorization", "Bearer " + apiKey);
        con.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + boundary);
        String org = System.getenv("OPENAI_ORG");
        if (org != null && !org.isBlank()) {
            con.setRequestProperty("OpenAI-Organization", org);
        }

        try (OutputStream rawOs = con.getOutputStream();
             BufferedOutputStream os = new BufferedOutputStream(rawOs);
             InputStream fis = new BufferedInputStream(new FileInputStream(audioFile))) {

            // Helper to write strings
            final byte[] CRLF = "\r\n".getBytes(StandardCharsets.UTF_8);
            Consumer<String> writeStr = s -> {
                try { os.write(s.getBytes(StandardCharsets.UTF_8)); } catch (IOException e) { throw new UncheckedIOException(e); }
            };

            // Part: model
            writeStr.accept("--" + boundary + "\r\n");
            writeStr.accept("Content-Disposition: form-data; name=\"model\"\r\n");
            writeStr.accept("Content-Type: text/plain; charset=UTF-8\r\n\r\n");
            writeStr.accept(OPENAI_ASR_MODEL);
            os.write(CRLF);

            // Part: response_format
            if (responseFormat != null && !responseFormat.isBlank()) {
                writeStr.accept("--" + boundary + "\r\n");
                writeStr.accept("Content-Disposition: form-data; name=\"response_format\"\r\n");
                writeStr.accept("Content-Type: text/plain; charset=UTF-8\r\n\r\n");
                writeStr.accept(responseFormat);
                os.write(CRLF);

                // If verbose_json, include timestamp_granularities[] fields
                if ("verbose_json".equalsIgnoreCase(responseFormat)) {
                    String[] grans = OPENAI_ASR_TIMESTAMP_GRANULARITIES.split(",");
                    for (String g : grans) {
                        String val = g == null ? "" : g.trim();
                        if (val.isEmpty()) continue;
                        writeStr.accept("--" + boundary + "\r\n");
                        writeStr.accept("Content-Disposition: form-data; name=\"timestamp_granularities[]\"\r\n");
                        writeStr.accept("Content-Type: text/plain; charset=UTF-8\r\n\r\n");
                        writeStr.accept(val);
                        os.write(CRLF);
                    }
                }
            }

            // Part: file
            String filename = audioFile.getName();
            String contentType = guessContentType(filename);
            writeStr.accept("--" + boundary + "\r\n");
            writeStr.accept("Content-Disposition: form-data; name=\"file\"; filename=\"" + escapeQuotes(filename) + "\"\r\n");
            writeStr.accept("Content-Type: " + contentType + "\r\n\r\n");

            byte[] buf = new byte[8192];
            int r;
            while ((r = fis.read(buf)) != -1) {
                os.write(buf, 0, r);
            }
            os.write(CRLF);

            // Finish
            writeStr.accept("--" + boundary + "--\r\n");
        } catch (UncheckedIOException uio) {
            throw uio.getCause();
        }

        int code = con.getResponseCode();
        InputStream is = code >= 400 ? con.getErrorStream() : con.getInputStream();
        String body = readAll(is);
        if (code != 200) {
            throw new IOException("HTTP " + code + ": " + body);
        }
        return body;
    }

    private static String guessContentType(String filename) {
        String lower = filename.toLowerCase(Locale.ROOT);
        if (lower.endsWith(".mp3")) return "audio/mpeg";
        if (lower.endsWith(".wav")) return "audio/wav";
        if (lower.endsWith(".m4a")) return "audio/mp4";
        return "application/octet-stream";
    }

    private static void ensureMarkdownForSrt(File srtFile) throws IOException {
        if (srtFile == null || !srtFile.isFile()) return;
        String baseName = stripExtension(srtFile.getName());
        File mdFile = new File(srtFile.getParentFile(), baseName + ".md");
        if (mdFile.exists()) return;
        String srt = Files.readString(srtFile.toPath(), StandardCharsets.UTF_8);
        String text = srtToPlainText(srt).trim();
        String out = text.isEmpty() ? "" : text + System.lineSeparator();
        Files.writeString(mdFile.toPath(), out, StandardCharsets.UTF_8);
        System.out.println("[OK] Saved MD: " + mdFile.getName());
    }

    private static String srtToPlainText(String srtContent) {
        if (srtContent == null || srtContent.isBlank()) return "";
        String[] lines = srtContent.split("\\R");
        StringBuilder sb = new StringBuilder();
        StringBuilder cue = new StringBuilder();
        for (String line : lines) {
            String t = line == null ? "" : line.trim();
            if (t.isEmpty()) {
                if (cue.length() > 0) {
                    if (sb.length() > 0) sb.append('\n');
                    sb.append(cue.toString().trim());
                    cue.setLength(0);
                }
                continue;
            }
            // skip index lines and timestamp lines
            boolean isIndex = t.chars().allMatch(Character::isDigit);
            if (isIndex) continue;
            if (t.contains("-->")) continue;
            // strip simple HTML-like tags
            String cleaned = t.replaceAll("<[^>]+>", "").replaceAll("\\s+", " ").trim();
            if (cleaned.isEmpty()) continue;
            if (cue.length() > 0) cue.append(' ');
            cue.append(cleaned);
        }
        if (cue.length() > 0) {
            if (sb.length() > 0) sb.append('\n');
            sb.append(cue.toString().trim());
        }
        return sb.toString();
    }

    private static String escapeQuotes(String s) {
        return s == null ? "" : s.replace("\"", "\\\"");
    }

    private static String readAll(InputStream is) throws IOException {
        if (is == null) return "";
        try (BufferedReader br = new BufferedReader(new InputStreamReader(is, StandardCharsets.UTF_8))) {
            StringBuilder sb = new StringBuilder();
            char[] buf = new char[4096];
            int r;
            while ((r = br.read(buf)) != -1) {
                sb.append(buf, 0, r);
            }
            return sb.toString();
        }
    }
}
