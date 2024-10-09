;; name project n8dx
;; name program n8
;; name extension dx

;; import libraries
(import std.stdio);
(import std.string);
(import std.algorithm);

(void main() {
    // Prompt the user to enter a file path
    string filePath;
    std.stdio.write("Enter the file path: ");
    std.stdio.readln(filePath);

    // Read the contents of the file
    string fileContent;
    try {
        fileContent = std.file.read(filePath);
        if (fileContent.empty) {
            std.stdio.writeln("Error: The file is empty.");
            return;
        }
        std.stdio.writeln("File content:");
        std.stdio.writeln(fileContent);
        std.stdio.writeln();

        // Count the number of lines, words, and characters
        int lineCount = 1;
        int wordCount = 0;
        int characterCount = 0;
        bool inWord = false;

        foreach (line; fileContent.split('\n')) {
            foreach (char c; line) {
                if (c.isWhitespace) {
                    inWord = false;
                    characterCount++;
                } else {
                    characterCount++;
                    inWord = true;
                }
                if (c == 'n) {
                    lineCount++;
                    inWord = false;
                }
                if (inWord) {
                    wordCount++;
                }
            }

    // Display the results
    std.stdio.writeln("Line count: " ~ lineCount);
    std.stdio.writeln("Word count: " ~ wordCount);
    std.stdio.writeln("Character count (excluding spaces): " ~ (characterCount - lineCount));
    }
    catch (std.exception e) {
    std.stdio.writeln("Error reading the file: " ~ e.msg);
    })))

