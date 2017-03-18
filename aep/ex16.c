#include "stdio.h"

int printDec(int);

int main()
{
    int N;
    scanf("%d", &N);
    
    printf("%d\n", printDec(N));

    return 0;
}

int printDec(int n)
{
    if(n == 0) return 0;
    printf("%d ", n);
    return printDec(n-1);
}