// P1 - O - 0
// P2 - X - 1
#include "stdio.h"

int start(char [3][3]);
int isWinner(char [3][3]);

int main()
{
  char table[3][3];
  int winner;

  winner = start(table);

  printf("%d\n", winner);

  return 0;
}

int isWinner(char table[3][3])
{
  int winner = -1;
  int cp0r, cp1r;
  int cp0c, cp1c;
  int cp0d, cp1d;
  int cp0d2, cp1d2;

  cp0d = cp1d = cp0d2 = cp1d2 = 0;

  for (size_t i = 0; i < 3; i++)
  {
    cp0r = cp1r = 0;
    cp0c = cp1c = 0;
    for (size_t j = 0; j < 3; j++)
    {
      //Row win
      table[i][j] == 'o' ? cp0r++ : (table[i][j] == 'x' ? cp1r++ : 0);
      if(cp0r == 3) return 0;
      if(cp1r == 3) return 1;

      //Column win
      table[j][i] == 'o' ? cp0c++ : (table[j][i] == 'x' ? cp1c++ : 0);
      if(cp0c == 3) return 0;
      if(cp1c == 3) return 1;

      //Main Diagonal win
      (table[i][j] == 'o' && j == i) ? cp0d++ : ((table[i][j] == 'x' && j == i) ? cp1d++ : 0);
      if(cp0d == 3) return 0;
      if(cp1d == 3) return 1;

      // Secondary Diagonal win
      (table[i][j] == 'o' && (i + j) == 2) ? cp0d2++ : ((table[i][j] == 'x' && (i + j) == 2) ? cp1d2++ : 0);
      if(cp0d2 == 3) return 0;
      if(cp1d2 == 3) return 1;
    }
  }
  return winner;
}

int start(char table[3][3])
{
  int winner;
  int player = 0;
  int row;
  int column;

  for(int i = 0; i < 9; i++)
  {
    scanf("%d %d", &row, &column);
    table[row][column] = (player == 0 ? 'o' : 'x');
    player = (player == 0 ? 1 : 0);
    winner = isWinner(table);
    if(winner != -1) return winner;
    i % 2 ? printf("\n") : 0;
  }

  return isWinner(table);
}
