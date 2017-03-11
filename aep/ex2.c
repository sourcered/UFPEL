#include "stdio.h"

void scanArray(int [], int);
void sortArrayAsc(int [], int);
void concatArray(int [], int [], int[], int, int);

#if 1
#include "mylib.h"
#endif

int main()
{
  int v1[10];
  int v2[10];

  scanArray(v1, 10);
  scanArray(v2, 10);

  sortArrayAsc(v1, 10);
  sortArrayAsc(v2, 10);

  printArray(v1, 10);
  printArray(v2, 10);

  int v3[20];

  concatArray(v1,v2,v3, 10, 10);
  sortArrayAsc(v3, 20);
  printArray(v3, 20);

  return 0;
}

void scanArray(int v[], int count)
{
  for(int i = 0; i < count; i++)
    scanf("%d", &v[i]);
}

void sortArrayAsc(int v[], int count)
{
  int tmp;
  for(int i = 0; i < count; i++)
    for(int j = i+1; j < count; j++)
    {
      if(v[i] > v[j])
      {
        tmp = v[i];
        v[i] = v[j];
        v[j] = tmp;
      }
    }
}

void concatArray(int v1[], int v2[], int v3[], int size1, int size2)
{
  int c = 0;
  for(int i = 0, j = 0; i < size1+size2; i++, j++)
  {
    if(j <= size1-1) v3[i] = v1[j];
    else
    {
      if(!c)
      {
        c = 1;
        j = 0;
      }
      v3[i] = v2[j];
    }
  }
}
