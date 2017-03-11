#include "stdio.h"

void readMatrix(int [4][4], int);
int getNuleRows(int [4][4], int);
int getNuleColumns(int [4][4], int);

int main()
{
  int matrix[4][4];
  int row;
  int column;

  readMatrix(matrix, 4);

  row = getNuleRows(matrix, 4);
  column = getNuleColumns(matrix, 4);

  printf("%d %d\n", row, column);

  return 0;
}

void readMatrix(int matrix[4][4], int size)
{
  for (size_t i = 0; i < size; i++)
    for (size_t j = 0; j < size; j++)
      scanf("%d", &matrix[i][j]);
}

int getNuleRows(int matrix[4][4], int size)
{
  int value = 0;
  int c = 0;
  for (size_t i = 0; i < size; i++)
  {
    for (size_t j = 0; j < size; j++)
      if(matrix[i][j] == 0) c++;
    if(c%size == 0 && c != 0)
      value++;
    c = 0;
  }
  return value;
}
int getNuleColumns(int matrix[4][4], int size)
{
  int value = 0;
  int c = 0;
  for (size_t i = 0; i < size; i++)
  {
    for (size_t j = 0; j < size; j++)
      if(matrix[j][i] == 0) c++;
    if(c%size == 0 && c != 0)
      value++;
    c = 0;
  }
  return value;
}
