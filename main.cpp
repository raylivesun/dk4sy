#include <string.h>
#include <ctype.h>
#include <stdbool.h>

using namespace std;
#if 0
// Function to check if a string is a palindrome
bool isPalindrome(const char* str) {
    // Convert the string to lowercase
    char* lowerStr = malloc(strlen(str) + 1);
    strcpy(lowerStr, str);
    for (int i = 0; i < strlen(lowerStr); i++) {
        lowerStr[i] = tolower(lowerStr[i]);
    }

    // Check if the string is a palindrome
    int left = 0;
    int right = strlen(lowerStr) - 1;
    while (left < right) {
        if (lowerStr[left] != lowerStr[right]) {
            free(lowerStr);
            return false;
        }
        left++;
        right--;
    }

    free(lowerStr);
    return true;
}


// Function to check if a string contains only lowercase letters
bool hasOnlyLowercase(const char* str) {
    for (int i = 0; i < strlen(str); i++) {
        if (!islower(str[i])) {
            return false;
        }
    }
    return true;
}


// Function to count the number of vowels in a string
int countVowels(const char* str) {
    int vowelCount = 0;
    for (int i = 0; i < strlen(str); i++) {
        char c = tolower(str[i]);
        if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u') {
            vowelCount++;
        }
    }
    return vowelCount;
}


// Function to check if a string is a valid IPv4 address
bool isValidIPv4(const char* str) {
    int count = 0;
    int currentSegment = 0;
    for (int i = 0; i < strlen(str); i++) {
        char c = str[i];
        if (c == '.' || (c >= '0' && c <= '9')) {
            if (c == '.') {
                if (currentSegment == 3 || (currentSegment == 2 && str[i + 1] == '.')) {
                    return false;
                }
                count++;
                currentSegment++;
            } else {
                currentSegment = currentSegment * 10 + (c - '0');
                if (currentSegment > 255) {
                    return false;
                }
            }
        } else {
            return false;
        }
    }
    return count == 3 && currentSegment > 0;
}


// Function to check if a string is a valid IPv6 address
bool isValidIPv6(const char* str) {
    int count = 0;
    int groupCount = 0;
    int currentGroup = 0;
    for (int i = 0; i < strlen(str); i++) {
        char c = str[i];
        if (c == ':' || (c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F')) {
            if (c == ':') {
                if (currentGroup == 8 || (currentGroup == 7 && str[i + 1] == ':')) {
                    return false;
                }
                count++;
                groupCount++;
                currentGroup++;
            } else {
                currentGroup = currentGroup * 16 + (c >= '0' && c <= '9' ? c - '0' : (c >= 'a' && c
                <= 'f' ? c - 'a' + 10 : c - 'A' + 10));
                if (currentGroup > 0xFFFF) {
                    return false;
                }
            }
            if (i < strlen(str) - 1 && str[i + 1] == ':') {
                i++;
            }
            currentGroup = 0;
            continue;

        } else if (c == '.' && count == 7 && groupCount == 8) {
            return true;
        } else {
            return false;
        }
        if (i == strlen(str) - 1 && count == 7 && groupCount == 8) {
            return true;
        }
        if (i == strlen(str) - 1) {
            return false;
        }
        if (str[i] == '.' && str[i + 1] == '.') {
            return false;
        }
        if (str[i] == ':' && str[i + 1] == ':') {
            return false;
        }
        if (str[i] == '.' && (str[i + 1] >= '0' && str[i + 1] <= '9')) {
            return false;
        }
        if (str[i] == ':' && (str[i + 1] >= '0' && str[i + 1] <= '9' || (str[i + 1] >= 'a' && str[i + 1] <= 'f') || (str[i + 1] >= 'A' && str[i + 1] <= 'F'))) {
            return false;
        }
        if (str[i] == '.' && str[i + 1] == '.' && (str[i + 2] >= '0' && str[i + 2] <= '9')) {
            return false;
        }
        if (str[i] == ':' && str[i + 1] == ':' && str[i + 2] == ':') {
            return false;
        }
        if (str[i] == '.' && str[i + 1] == '.' && str[i + 2] >= '0' && str[i + 2] <= '9') {
            return false;
        }
        if (str[i] == ':' && str[i + 1] == ':' && str[i + 2] == ':' && str[i + 3] >= '0' && str[i + 3] <= '9') {
            return false;
        }
        if (str[i] == '.' && str[i + 1] == '.' && str[i + 2] >= '0' && str[i + 2] <= '9' && str[i + 3] >= '0' && str[i + 3] <= '9') {
            return false;
        }
        if (str[i] == ':' && str[i + 1] == ':' && str[i + 2] == ':' && str[i + 3] >= '0' && str[i + 3] <= '9' && str[i + 4] >= '0' && str[i + 4] <= '9') {
            return false;
        }
    }
    return false;
}
#endif
int main() {
    return 0;
}