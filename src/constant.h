#ifndef CONSTANT_H
#define CONSTANT_H

#define BLOCK_WIDTH  60
#define BLOCK_HEIGHT 60

#define X_ALLOWED_MIN 0
#define X_ALLOWED_MAX 9

#define Y_ALLOWED_MIN 0
#define Y_ALLOWED_MAX 9

#define TOTAL_MINES 10

const char MINES = 'M';
const char UNREVEALED = 'E';
const char EMPTY = 'B';
const char MINES_REVEALED = 'R';
const char GAME_OVER ='X';


enum MouseState
{
   INVALID = 0,
   LEFT_MOUSE = 1,
   RIGHT_MOUSE =2,

};




#endif