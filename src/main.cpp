#include <iostream>
#include "controller.h"
#include "game.h"
#include "renderer.h"

int main()
{
   constexpr std::size_t kScreenWidth{550};
   constexpr std::size_t kScreenHeight{550};

   Renderer renderer(kScreenWidth, kScreenHeight);
   Controller controller;
   Game game;

   if(game.Run(controller,renderer))
   {
      std::cout << "Congratulations You won this game ...!\n";
   }
   else
   {
      std::cout << "Game has terminated unsuccessfully!\n";
   }
   std::cout << "Score: " << game.GetScore() << "\n";
  return 0;
}