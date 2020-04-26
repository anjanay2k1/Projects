#include "game.h"
#include <iostream>
#include "SDL.h"

#include "constant.h"

Game::Game():engine(dev()),
            _y(Y_ALLOWED_MAX),
            _x(X_ALLOWED_MAX),
            _totalMines(TOTAL_MINES),
            _visited(_y,std::vector<bool>(_x,false)),
            _board(_y,std::vector<char> (_x,UNREVEALED))
{
  srand(time(0));              // Generate Different number each time
  GenerateMinesPosition();
}

void Game:: GenerateMinesPosition()
{
   int i = 0;
   int _totalBlocks = _y * _x;
   while( i < _totalMines)
   {
      int  _pos = rand() % _totalBlocks;
      auto status = _minesPos.insert(_pos);
      if( status.second == true)
      {
         int x = _pos%_y;
         int y = _pos/_y;
         _board[y][x] = MINES;
         i++;
      }
   }
   for(int i = 0 ; i < _y ; i++)
   {
      for(int j = 0 ; j < _x ; j++)
      {
         if(_board[i][j] != MINES)
            _board[i][j] = UNREVEALED;
      }
   }
}

bool Game::Run(Controller &controller, Renderer &renderer)
{
   Uint32 title_timestamp = SDL_GetTicks();
   Uint32 frame_end;
   bool running = true;

   while (running && _totalMines >  0 )
   {
      // Input, Update, Render - the main game loop.
      int y,x;
      MouseState mt;
      controller.HandleInput(running,y,x,mt);

      if(y >= Y_ALLOWED_MIN  && y < Y_ALLOWED_MAX  && x >= X_ALLOWED_MIN && x < Y_ALLOWED_MAX)
      {
         Update(y,x,mt,running);
      }
      renderer.Render(_board);
      frame_end = SDL_GetTicks();

      // After every second, update the window title.
      if (frame_end - title_timestamp >= 1000)
      {
         title_timestamp = SDL_GetTicks();
         score++;
         renderer.UpdateWindowTitle(score,_totalMines);
      }
   }

   // Just Show the current Stage of game
   renderer.Render(_board);
   SDL_Delay(1000);
   running = ( (_totalMines == 0) ? true : false);
   return running;
}

void Game::Update(int y,int x,MouseState mt,bool &running)
{

   char digits[] = {'0', '1', '2', '3', '4', '5', '6', '7', '8' };

   if(_board[y][x] == MINES)
   {
      if(mt == MouseState::LEFT_MOUSE)
      {
         _board[y][x] = GAME_OVER;
         running = false;
         return;
      }
      else
      {
         _board[y][x] = MINES_REVEALED;
         --_totalMines;
      }
   }
   else if(_board[y][x] ==  UNREVEALED )
   {
      _queue.push(std::vector<int>{y,x});

      int _mines = PushNeighbours(y,x);
      _queue.pop();

      if(_mines == 0)
         _board[y][x] = EMPTY;
      else
         _board[y][x] = digits[_mines];

      while(!_queue.empty())
      {

         std::vector<int> curr = _queue.front();
         y = curr[0];
         x = curr[1];


      _mines  = PushNeighbours(y,x);
      _queue.pop();

      if(_mines == 0)
         _board[y][x] = EMPTY;
      else
         _board[y][x] = digits[_mines];

      }

   }

}

int Game::PushNeighbours(int y, int x)
{
   int adjacentMines = 0;

   std::vector<std::vector<int>> _posToPush;
   bool _pushNeeded = true;

   for(int i = 0 ; i < 9 ; i++)
   {
      int xOffset = -1 + i%3;
      int yOffset = -1 + i/3;

      if(xOffset == 0 && yOffset == 0)
         continue;

      if(IsBoardPosValid(y,x,yOffset,xOffset))
      {
         if(_board[y+yOffset][x+xOffset] == MINES || _board[y+yOffset][x+xOffset] == MINES_REVEALED )
         {
            adjacentMines += 1;
            _pushNeeded = false;
         }
         else if(_board[y+yOffset][x+xOffset] == UNREVEALED)
         {
            _posToPush.push_back(std::vector<int>{y+yOffset,x+xOffset});
         }
      }
   }

   if(_pushNeeded) //push all postion on queue
   {
      for(auto itr : _posToPush)
      {
         if(_visited[itr[0]][itr[1]] == false)
         {
            _queue.push(std::vector<int> {itr[0],itr[1]});
            _visited[itr[0]][itr[1]] = true;
         }
      }

   }
   return adjacentMines;
}
bool Game::IsBoardPosValid(int y, int x, int yoffset, int xOffset)
{
   if (  y + yoffset >= 0 &&
         y + yoffset < _y &&
         x + xOffset >= 0 &&
         x + xOffset < _x
      )
      return true;
   return false;
}

int Game::GetScore() const { return score; }
