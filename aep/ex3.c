#include "stdio.h"

#if 1
// #include "mylib.h"
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

#endif

typedef struct
{
  int a[10];
  int b[10];
  char operands[10];
  float result[10];
}Equation;

float getResult(int, int, char);
void getResults(Equation *);
void scanValues(Equation *);

int main()
{
  Equation equation;

  scanValues(&equation);

  getResults(&equation);

  printArrayFloat(equation.result, 10);

  return 0;
}

float getResult(int a, int b, char op)
{
  float result;
  switch (op)
  {
    case '+':
      result = a + b;
      break;
    case '-':
      result = a - b;
      break;
    case '*':
      result = a * b;
      break;
    case '/':
      result = a / b;
      break;
  }
  return result;
}

void getResults(Equation * equation)
{
  for(int i = 0; i < 10; i++)
    equation->result[i] = getResult(equation->a[i], equation->b[i], equation->operands[i]);
}

void scanValues(Equation * equation)
{
  for(int i = 0; i < 10; i++)
  {
    scanf("%d %d", &(equation->a[i]), &(equation->b[i]));
    getchar();    //Clean buffer
    scanf("%c", &(equation->operands[i]));
  }
}
