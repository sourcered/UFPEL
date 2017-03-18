#include "stdio.h"

int tripleFib(int);

int main()
{
    int N;
    scanf("%d", &N);

    printf("%d\n", tripleFib(N));

    return 0;
}

int tripleFib(int n)
{
    if(n == 0) return 0;
    if(n == 1 || n == 2 || n == 3) return 1;
    return tripleFib(n-1) + tripleFib(n-2) + tripleFib(n-3);
}