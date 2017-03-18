#include "stdio.h"

int printAsc(int, int);

int main()
{
    int N;
    scanf("%d", &N);
    
    printf("%d\n", printAsc(N, 0));

    return 0;
}

int printAsc(int n, int i)
{
    if(i == n) return n;
    printf("%d ", i);
    return printAsc(n, i+1);
}