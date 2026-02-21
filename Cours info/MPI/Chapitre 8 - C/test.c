#include <stdio.h>
#include <stdlib.h>

int test(int mat[][4]){
    printf("%d\n", mat[0][0]);
}

int main(){
    /*const int n = 3;
    int m = 4;
    
    int const* p = &n;
    p = &m;
    m = 5;
    printf("%d", *p);*/

    /*for(;;){
        printf("d");
    }*/

    
    //printf("\n%ld\n", sizeof(char*));

    int** testval = malloc(sizeof(int*)*5);
    for (int i = 0; i < 5; i++){
        testval[i] = calloc(sizeof(int)*4);
    }

    test(testval);
}