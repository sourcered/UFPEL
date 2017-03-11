#include "stdio.h"

int fat(const int);

int main()
{
  int n;

  scanf("%d", &n);

  printf("%d\n", fat(n));

  return 0;
}

int fat(const int n)
{
  if(n == 1) return 1;
  return n * fat(n-1);
}
