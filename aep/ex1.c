#include "stdio.h"

void swap(int *, const size_t, const size_t);
void scanArray(int *, const size_t);
void sortArray(int *, const size_t);

int main()
{
  int array[15];

  scanArray(array, 15);

  sortArray(array, 15);

  int max = array[14];
  int min = array[0];

  printf("%d %d\n", max, min);

  return 0;
}

void swap(int * array, const size_t i, const size_t j)
{
  int tmp;
  tmp = array[i];
  array[i] = array[j];
  array[j] = tmp;
}

void scanArray(int * array, const size_t size)
{
  for (size_t i = 0; i < size; i++)
    scanf("%d", &(*array)+i);
}

void sortArray(int * array, const size_t size)
{
  for (size_t i = 0; i < size; i++)
    for (size_t j = 0; j < size; j++)
      if(array[i] < array[j]) swap(array, i, j);
}
