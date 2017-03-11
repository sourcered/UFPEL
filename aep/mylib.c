#include "mylib.h"

void printArray(int v[], int size)
{
  for(int i = 0; i < size; i++)
    printf("%d ", v[i]);
  printf("\n");
}

void printArrayFloat(float v[], int size)
{
  for(int i = 0; i < size; i++)
    printf("%.2f\n", v[i]);
  printf("\n");
}
