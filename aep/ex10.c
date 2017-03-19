#include "stdio.h"
#include "stdlib.h"
#include "string.h"

typedef struct
{
  char * model;
  char * maker;
  int age;
  float price;
}Carro;

void registerCars(Carro *, int, int *);

void alocStruct(Carro *, int *);

int verifyModel(Carro *, char [256], int);

void showModel(Carro *, int);

int userInterface();

void getModelFromUser(Carro *, int);

void start(Carro *, int, int);

int main()
{
  int sizeAloc = 10;
  int totalCars = 0;
  Carro * carro = malloc(sizeAloc * sizeof(Carro));

  start(carro, sizeAloc, totalCars);

  return 0;
}

void registerCars(Carro * carro, int sizeAloc, int * totalCars)
{
  int op;
  int index = 0;
  size_t size = 256;
  char * maker = malloc(256 * sizeof(char));
  int age;
  float price;
  while (1)
  {
    printf("1. Register\t0.Exit : ");
    scanf("%d", &op);
    switch (op)
    {
      case 0:
        return;
        break;
      case 1:
        if(index == sizeAloc-1) alocStruct(carro, &sizeAloc);
        printf("\nModel: ");
        getchar();
        getline(&carro[index].model, &size, stdin);
        // scanf("%s", &carro[index].model);
        getchar();
        printf("\nMaker: ");
        getline(&carro[index].maker, &size, stdin);
        // scanf("%s", &carro[index].maker);
        getchar();
        printf("\nAge: ");
        scanf("%d", &carro[index].age);
        printf("\nPrice: ");
        scanf("%f", &carro[index].price);
        index++;
        *totalCars = index;
        break;
    }
  }
}

void alocStruct(Carro * carro, int * sizeAloc)
{
  *sizeAloc = *sizeAloc * 2;
  carro = (Carro *) realloc(carro, *sizeAloc);
}

int verifyModel(Carro * carro, char model[256], int totalCars)
{
  for(int i = 0; i != totalCars; i++, carro++)
    if(strcmp(model, carro->model) == 0) return i;
  return -1;
}

void showModel(Carro * carro, int index)
{
  for(int i = 0; i <= index; carro++, i++)
    if(i == index)
    {
      printf("Model: %s", carro->model);
      printf("Maker: %s", carro->maker);
      printf("Age: %d\n", carro->age);
      printf("Price: %.2f\n", carro->price);
    }
}

int userInterface()
{
  int op;
  printf("\n#-------------------------#\n1.Verify an model\t0.Exit : ");
  scanf("%d", &op);
  printf("\n");
  return op;
}

void getModelFromUser(Carro * carro, int totalCars)
{
  char * model = malloc(256 * sizeof(char));

  size_t size = strlen(model);
  int modelIndex;

  while (1)
  {
    switch (userInterface())
    {
      case 0:
        exit(0);
        break;
      case 1:
        printf("Model: ");
        getchar();
        getline(&model, &size, stdin);

        modelIndex = verifyModel(carro, model, totalCars);

        if(modelIndex != -1) showModel(carro, modelIndex);
        else printf("This model not exists. :(\n");

        break;
    }
  }

}

void start(Carro * carro, int sizeAloc, int totalCars)
{
  registerCars(carro, sizeAloc, &totalCars);
  getModelFromUser(carro, totalCars);
}
