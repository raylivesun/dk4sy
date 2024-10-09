;; name project df2ch
;; name program df2
;; name extension ch

(#include <stdio.h>)
(#include <stdlib.h>)
(#include <string.h>)

(#define MAX_LINE_LENGTH 1000)

(struct Dataframe {
    char** columns;
    int num_rows;
    int num_cols;
})

(void free_dataframe (struct Dataframe* df)) {
    for (int i = 0; i < df->num_cols; i++) {
        free(df->columns[i]);
    }
    free(df->columns);
    free(df);
})

(struct Dataframe* read_csv_file (const char* filename)) {
    FILE* file = fopen(filename, "r");
    if (file == NULL) {
        fprintf(stderr, "Error opening file: %s\n", filename);
        return NULL;
    }

    char line[MAX_LINE_LENGTH + 1];
    struct Dataframe* df = (struct Dataframe*)malloc(sizeof(struct Dataframe));
    df->num_rows = 0;
    df->num_cols = 0;
    df->columns = NULL;

    while (fgets(line, MAX_LINE_LENGTH + 1, file)) {
        df->num_rows++;
        if (df->num_cols == 0) {
            df->num_cols = strlen(line) / (strlen(strtok(line, ",")) + 1);
            df->columns = (char**)malloc(df->num_cols * sizeof(char*));
            for (int i = 0; i < df->num_cols; i++) {
            df->columns[i] = (char*)malloc((strlen(strtok(NULL, ",")) + 1) * sizeof(char));

            }
            continue;
        }

        char* token = strtok(line, ",");
        for (int i = 0; i < df->num_cols; i++) {
        strcpy(df->columns[i], token);
            token = strtok(NULL, ",");
        }
    }
    fclose(file);

    return df;
}))

(void print_dataframe (const struct Dataframe* df)) {
    for (int i = 0; i < df->num_rows; i++) {
    for (int j = 0; j < df->num_cols; j++) {
    printf("%s, ", df->columns[j]);
        }
        printf("\n");
    }
    printf("\n");
    free_dataframe(df);
    }

    return 0;
}))



