#ifndef GAME_H
#define GAME_H

#include <random>
#include <vector>
#include <queue>
#include <set>

#include "SDL.h"
#include "controller.h"
#include "renderer.h"
#include "constant.h"

class Game
{
public:
   Game();
   bool Run(Controller &controller, Renderer &renderer);
  	int  GetScore() const;

private:
   std::random_device dev;
   std::mt19937 engine;

   int _y ;
   int _x ;
   int _totalMines;


   std::vector<std::vector<bool>> _visited;
   std::vector<std::vector<char>> _board;     //board
   std::set<int>                  _minesPos;
   std::queue<std::vector<int>>   _queue;
   int score{0};

   void GenerateMinesPosition();
   void Update(int y ,int x, MouseState mt,bool &running);
   int  PushNeighbours(int y, int x);
   bool IsBoardPosValid(int y, int x, int yoffset, int xOffset);

};

#endif