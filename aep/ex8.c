#include "stdio.h"
#include "stdlib.h"
#include "string.h"

typedef struct
{
  char name[256];
  char type[25];
  float force;
  float agility;
  float intelligence;
  float armor;
  float HP;
  float MP;
}Character;

void getCharacters(Character *);
void showCharacters(Character *);
void calculateStatusCharacter(Character *);

int main()
{
  Character * character = malloc(sizeof(Character) * 10);

  getCharacters(character);

  calculateStatusCharacter(character);

  showCharacters(character);

  return 0;
}

void getCharacters(Character * character)
{
  for (size_t i = 0; i < 10; i++)
  {
    printf("\nName: ");
    scanf("%s", character[i].name);
    printf("Force , Agility, Intelligence: ");
    scanf("%f%f%f", &character[i].force, &character[i].agility, &character[i].intelligence);
  }
}

void showCharacters(Character * character)
{
  for (size_t i = 0; i < 10; i++)
  {
    printf("Name: %s\nType: %s\nArmor: %.2f\n", character[i].name, character[i].type, character[i].armor);
    printf("Force: %.2f\nAgility: %.2f\nIntelligence: %.2f\n", character[i].force, character[i].agility, character[i].intelligence);
    printf("HP: %.2f\nMP: %.2f\n\n", character[i].HP, character[i].MP);
  }
}

void calculateStatusCharacter(Character * character)
{
  printf("#--------------------#\n");
  for (size_t i = 0; i < 10; i++)
  {
    strcpy(character[i].type, (character[i].force > character[i].agility ? (character[i].force > character[i].intelligence ?
                        "force" : (character[i].agility > character[i].intelligence ? "agility" : "intelligence") ) :
                        (character[i].agility > character[i].intelligence ? "agility" : "intelligence") ));
    character[i].armor = character[i].agility * 0.5f;
    character[i].HP = character[i].force * 20.0f;
    character[i].MP = character[i].intelligence * 40.0f;
  }
}
