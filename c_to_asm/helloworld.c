#include <stdio.h>
#include <string.h>

int main() {
    char str1[20] = "Hello";
    char str2[20] = "World";
    char str3[40];

    // Concatenate str1 and str2 into str3
    strcpy(str3, str1);
    strcat(str3, " ");
    strcat(str3, str2);

    // Compare str1 and str2
    if (strcmp(str1, str2) == 0) {
        printf("The strings are identical.\n");
    } else {
        printf("The strings are not identical.\n");
    }

    // Print concatenated string
    printf("Concatenated String: %s\n", str3);

    return 0;
}

