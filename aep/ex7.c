#include "stdio.h"

#define f5(i) for(size_t i = 0; i < 5; i++)

void readMatrix(int [5][5]);
int findValue(int [5][5], int);

int main()
{
  int matrix[5][5];
  readMatrix(matrix);

  int x;
  printf("\nX: ");
  scanf("%d", &x);

  if(findValue(matrix, x) == -1) printf("Nao encontrado.\n\n");

  return 0;
}

void readMatrix(int matrix[5][5])
{
  f5(i)
    f5(j)
      scanf("%d", &matrix[i][j]);
}

int findValue(int matrix[5][5], int x)
{
  f5(i)
    f5(j)
      if(matrix[i][j] == x) 
      {
        printf("%d %d\n", i+1, j+1);
        return 0;
      }
  return -1;
}
