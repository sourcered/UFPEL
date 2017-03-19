#include "stdio.h"

float convert(const float);

int main(int argc, char const *argv[])
{
  float temperature;

  scanf("%f", &temperature);

  printf("%.2f F\n", convert(temperature));

  return 0;
}

float convert(const float temperature)
{ return (temperature*(9.0/5.0) + 32); }
