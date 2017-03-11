#include "stdio.h"
#include "string.h"
#include "stdlib.h"

void criptString(char *);

int main()
{
  size_t size = 256;
  char * str = malloc(size * sizeof(char));

  getline(&str, &size, stdin);

  criptString(str);

  printf("%s\n", str);

  return 0;
}

void criptString(char * str)
{
  for(int i = 0; i < strlen(str); i++)
    if(str[i] >= 'a' && str[i] <= 'z') str[i] = (str[i] >= 'x' ? str[i]-23 : str[i]+3);
    else if(str[i] >= 'A' && str[i] <= 'Z') str[i] = (str[i] >= 'X' ? str[i]-23 : str[i]+3);
}
