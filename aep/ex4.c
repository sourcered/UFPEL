#include "stdio.h"
#include "string.h"
#include "stdlib.h"

void changeStr(char []);

int main(int argc, char const *argv[])
{
  size_t size = 50;
  char * str = malloc(50 * sizeof(char));

  getline(&str, &size, stdin);

  changeStr(str);

  printf("%s\n", str);

  return 0;
}

void changeStr(char str[])
{
  for (size_t i = 0; i < strlen(str); i++)
    if(str[i] >= 'a' && str[i] <= 'z') str[i] = str[i] - 32;
    else if(str[i] >= 'A' && str[i] <= 'Z') str[i] = str[i] + 32;
}