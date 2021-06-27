#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv){
    FILE *f;
    int firstNumberFromFile;
    int iter;
    int *numbers;

    if(argc<2){
        f = stdin;
    } else {
        f = fopen(argv[1], "r");
    }
    if (f == NULL){ 
        return 1;
    }

    fscanf(f, "%d\n", &firstNumberFromFile);
    numbers = malloc(firstNumberFromFile*(sizeof(firstNumberFromFile)));

    for(iter=0; iter<firstNumberFromFile;iter++){
        int a;
        fscanf(f, "%d\n", &a);
        numbers[iter] = a;
        printf("db: iter: %d, firstNumbeFromFile: %d, a: %d\n", iter, firstNumberFromFile, a);
    }

    if (f != NULL){
        fclose(f);

    } 
    printf("Liczby w odwrotnej kolejnosci:\n");
    for(iter = firstNumberFromFile; iter>0; --iter){
        int a = numbers[iter-1];
        printf("db: To jest: %d, liczba w tablicy: %d\n", iter, a);
    }   

    if(numbers != NULL){
        free(numbers);
    }

    return 0;
}