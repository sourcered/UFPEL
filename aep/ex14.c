#include "stdio.h"

int doubleFat(const int);

int main()
{
  int n;

  scanf("%d", &n);

  printf("%d\n", doubleFat(n));

  return 0;
}

int doubleFat(const int n)
{
  if(n == 1) return 1;
  return n * doubleFat(((n-1)%2 != 0 ? n-1 : n - 2));
}
