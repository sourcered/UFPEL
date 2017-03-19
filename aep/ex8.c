#include "stdio.h"
#include "stdlib.h"

#define ROW 10
#define COLUMN 10
int ** generateMatrix10by10();
void printMatrix(int **);

int main()
{
  int **matrix;
  
  matrix = generateMatrix10by10();
  
  printMatrix(matrix);

  return 0;
}

int ** generateMatrix10by10()
{
  int ** matrix;
  matrix = (int **) malloc(ROW * sizeof(int **));
  
  for(size_t i = 0; i < ROW; i++)
    matrix[i] = (int *) malloc(COLUMN * sizeof(int *));
  
  for(size_t i = 0; i < ROW; i++)
    for(size_t j = 0; j < COLUMN; j++)
      matrix[i][j] = (i == j ? (3*i*i) : (2*i + 7*j));
  return matrix;
}

void printMatrix(int ** matrix)
{
  for(size_t i = 0; i < ROW; i++)
  {
    for(size_t j = 0; j < COLUMN; j++)
      printf("%s%d ", (matrix[i][j] < 10 ? "  " : matrix[i][j] < 100 ? " " : "\0"), matrix[i][j]);  //Melhora a visualizacao da matriz e mostra valor
    printf("\n");
  }
}