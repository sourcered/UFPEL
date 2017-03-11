#include "stdio.h"
#include "stdlib.h"
#include "string.h"

typedef struct
{
  char * model;
}A;

int main(int argc, char const *argv[])
{
  A * a = (A *)malloc(2);
  // size_t size = 2;
  //
  // // scanf("%s\n", a.model);
  // char * aa;
  // getline(aa, &size, stdin);
  //
  // printf("%s\n", a->model);

  // char * model = malloc(sizeof(char) * 256);
  a[0].model = malloc(sizeof(char) * 256);
  size_t size = strlen(a[0].model);
  getline(&a[0].model, &size, stdin);

  printf("%s\n", a[0].model);

  if(strcmp(a[0].model, "hello\n") == 0) printf("Equals\n");

  return 0;
}
