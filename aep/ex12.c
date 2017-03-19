#include "stdio.h"

#define f(i) for(int i = 0; i < 3; i++)

void scanTeachersLog(float [3], char *);

void makeOperation(float [3], char *);

int main(int argc, char const *argv[])
{
  float tests[3];
  char operation;

  scanTeachersLog(tests, &operation);

  makeOperation(tests, &operation);

  return 0;
}

void scanTeachersLog(float tests[3], char * operation)
{
  f(i)
  {
    printf("Test %d: ", i);
    scanf("%f", &tests[i]);
  }
  printf("Operation: ");
  getchar();
  scanf("%c", operation);
}

void makeOperation(float tests[3], char * operation)
{
  float avg = (tests[0] + tests[1] + tests[2])/3;
  if(*operation == 'A') printf("AVG: %.2f\n", avg);
  else                  printf("%s\n", (avg < 4 ? "Fail" : (avg < 7 ? "Exam" : "Approved")));
}
