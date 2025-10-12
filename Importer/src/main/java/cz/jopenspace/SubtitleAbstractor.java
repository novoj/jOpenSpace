package cz.jopenspace;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.time.Duration;
import java.util.Arrays;
import java.util.Objects;

/**
 * Goes through downloaded subtitle files and sends them to OpenAI API to create abstracts.
 * - Input: plain-text subtitles saved by SubtitleDownloader (UTF-8 .txt files) in a directory.
 * - Output: for each input foo.txt, a foo.abstract.txt file next to it with the generated abstract.
 *
 * Usage:
 *   java cz.jopenspace.SubtitleAbstractor [inputDir]
 *
 * API key:
 *   - Read from environment variable OPENAI_API_KEY, or
 *   - from system property -Dopenai.api.key=...
 */
public class SubtitleAbstractor {

    // Default location used by SubtitleDownloader (kept here to avoid changing its access modifier)
    private static final String DEFAULT_INPUT_DIR = "data/subtitles";

    // Output extension for generated abstracts
    private static final String OUTPUT_EXTENSION = ".txt";

    // Configure your preferred model and endpoint here
    private static final String OPENAI_API_URL = "https://api.openai.com/v1/chat/completions";
    private static final String OPENAI_MODEL = System.getProperty("openai.model", System.getenv().getOrDefault("OPENAI_MODEL", "gpt-4o-mini"));

    // Whether to skip files that already have abstracts present
    private static final boolean SKIP_IF_EXISTS = Boolean.parseBoolean(
            System.getProperty("abstract.skipIfExists", System.getenv().getOrDefault("ABSTRACT_SKIP_IF_EXISTS", "true"))
    );

    // Max characters to send in one request to reduce risk of hitting token limits (rough heuristic)
    private static final int MAX_INPUT_CHARS = Integer.getInteger("abstract.maxInputChars",
            Integer.parseInt(System.getenv().getOrDefault("ABSTRACT_MAX_INPUT_CHARS", "60000"))
    );

    private static final long SLEEP_BETWEEN_REQUESTS_MS = Long.getLong("abstract.sleepMs",
            Long.parseLong(System.getenv().getOrDefault("ABSTRACT_SLEEP_MS", "500"))
    );

    // System prompt you can freely adjust
    public static final String SYSTEM_PROMPT =
            "Jsi asistent pro sumarizaci přednášek. Na základě poskytnutých titulků " +
            "vytvoř věcný, srozumitelný a kompaktní abstrakt (cca 5–8 vět) v češtině. " +
            "Zachyť téma, cíl, hlavní body a přínos. Neopisuj doslovně a nepoužívej časové značky.";

    private static final ObjectMapper MAPPER = new ObjectMapper();

    public static void main(String[] args) throws Exception {
        String inputDir = args != null && args.length > 0 && args[0] != null && !args[0].isBlank()
                ? args[0]
                : DEFAULT_INPUT_DIR;

        String apiKey = getApiKey();
        if (apiKey == null || apiKey.isBlank()) {
            System.err.println("[ERROR] Missing OpenAI API key. Set OPENAI_API_KEY env var or -Dopenai.api.key.");
            System.exit(2);
        }

        File dir = new File(inputDir);
        if (!dir.exists() || !dir.isDirectory()) {
            System.err.println("[ERROR] Input directory not found or not a directory: " + dir.getAbsolutePath());
            System.exit(3);
        }

        File[] inputs = dir.listFiles((d, name) -> name.toLowerCase().endsWith(".txt") && !name.toLowerCase().endsWith(OUTPUT_EXTENSION));
        if (inputs == null) inputs = new File[0];
        Arrays.sort(inputs, (a, b) -> a.getName().compareToIgnoreCase(b.getName()));

        int ok = 0, skipped = 0, failed = 0;
        for (File in : inputs) {
            try {
                File out = new File(in.getParentFile(), stripTxtExtension(in.getName()) + OUTPUT_EXTENSION);
                if (SKIP_IF_EXISTS && out.exists()) {
                    System.out.println("[SKIP] Abstract exists: " + out.getName());
                    skipped++;
                    continue;
                }

                String subtitles = Files.readString(in.toPath(), StandardCharsets.UTF_8);
                String input = prepareInput(subtitles);
                String abstractText = requestAbstract(apiKey, SYSTEM_PROMPT, input);
                if (abstractText == null || abstractText.isBlank()) {
                    System.out.println("[WARN] Empty abstract for " + in.getName());
                    failed++;
                    continue;
                }
                Files.writeString(out.toPath(), abstractText.trim() + System.lineSeparator(), StandardCharsets.UTF_8);
                System.out.println("[OK] Saved abstract: " + out.getName());
                ok++;

                if (SLEEP_BETWEEN_REQUESTS_MS > 0) Thread.sleep(SLEEP_BETWEEN_REQUESTS_MS);
            } catch (Exception ex) {
                System.out.println("[ERROR] Failed to create abstract for " + in.getName() + ": " + ex.getMessage());
                failed++;
            }
        }

        System.out.println("Done. Abstracts saved: " + ok + ", skipped: " + skipped + ", failed: " + failed);
    }

    private static String stripTxtExtension(String name) {
        if (name.toLowerCase().endsWith(".txt")) {
            return name.substring(0, name.length() - 4);
        }
        int dot = name.lastIndexOf('.');
        return dot > 0 ? name.substring(0, dot) : name;
    }

    private static String prepareInput(String subtitles) {
        if (subtitles == null) return "";
        String s = subtitles.trim();
        if (s.length() > MAX_INPUT_CHARS) {
            // Keep head and tail to preserve context
            int head = (int) (MAX_INPUT_CHARS * 0.75);
            int tail = MAX_INPUT_CHARS - head;
            String truncated = s.substring(0, head) + "\n...\n" + s.substring(s.length() - tail);
            return truncated;
        }
        return s;
    }

    private static String getApiKey() {
        String key = System.getenv("OPENAI_API_KEY");
        if (key == null || key.isBlank()) key = System.getProperty("openai.api.key");
        return key;
    }

    /**
     * Calls OpenAI Chat Completions API and returns the assistant message content.
     */
    public static String requestAbstract(String apiKey, String systemPrompt, String userContent) throws IOException {
        Objects.requireNonNull(apiKey, "apiKey");
        String payload = buildChatCompletionPayload(systemPrompt, userContent);

        HttpURLConnection con = (HttpURLConnection) new URL(OPENAI_API_URL).openConnection();
        con.setRequestMethod("POST");
        con.setConnectTimeout((int) Duration.ofSeconds(20).toMillis());
        con.setReadTimeout((int) Duration.ofSeconds(120).toMillis());
        con.setDoOutput(true);
        con.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
        con.setRequestProperty("Authorization", "Bearer " + apiKey);
        // Optional org header (ignored if not set)
        String org = System.getenv("OPENAI_ORG");
        if (org != null && !org.isBlank()) {
            con.setRequestProperty("OpenAI-Organization", org);
        }

        try (OutputStream os = con.getOutputStream()) {
            os.write(payload.getBytes(StandardCharsets.UTF_8));
        }

        int code = con.getResponseCode();
        InputStream is = code >= 400 ? con.getErrorStream() : con.getInputStream();
        String body = readAll(is);
        if (code != 200) {
            throw new IOException("HTTP " + code + ": " + body);
        }
        return extractContentFromChatCompletion(body);
    }

    private static String buildChatCompletionPayload(String systemPrompt, String userContent) {
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        sb.append("\"model\":\"").append(escapeJson(OPENAI_MODEL)).append("\",");
        sb.append("\"temperature\":0.2,");
        sb.append("\"messages\":[");
        sb.append("{\"role\":\"system\",\"content\":\"").append(escapeJson(systemPrompt)).append("\"},");
        // Keep user content in a single message; let the system prompt instruct the abstraction
        sb.append("{\"role\":\"user\",\"content\":\"")
          .append(escapeJson("Následují titulky přednášky. Vytvoř abstrakt dle pokynů v systémové zprávě.\n\n" + userContent))
          .append("\"}");
        sb.append(']');
        sb.append('}');
        return sb.toString();
    }

    private static String escapeJson(String s) {
        if (s == null) return "";
        StringBuilder out = new StringBuilder(s.length() + 16);
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            switch (c) {
                case '"': out.append("\\\""); break;
                case '\\': out.append("\\\\"); break;
                case '\n': out.append("\\n"); break;
                case '\r': out.append("\\r"); break;
                case '\t': out.append("\\t"); break;
                default:
                    if (c < 0x20) {
                        out.append(String.format("\\u%04x", (int) c));
                    } else {
                        out.append(c);
                    }
            }
        }
        return out.toString();
    }

    private static String extractContentFromChatCompletion(String json) throws IOException {
        JsonNode root = MAPPER.readTree(json);
        JsonNode choices = root.path("choices");
        if (!choices.isArray() || choices.size() == 0) return null;
        JsonNode message = choices.get(0).path("message");
        String content = message.path("content").asText(null);
        return content;
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
