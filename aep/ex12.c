#include "stdio.h"

static inline float calculateKmByL(float km , float l);

static inline void itPayToSell(float n);

int main()
{
  float km;
  float l;

  scanf("%f %f", &km, &l);

  itPayToSell(calculateKmByL(km, l));

  return 0;
}

static inline float calculateKmByL(float km , float l)
{
  return km/l;
}

static inline void itPayToSell(float n)
{
  printf("%s\n", (n < 8 ? "Sell you car" : (n < 14 ? "Economic" : "Super Economic")) );
}
