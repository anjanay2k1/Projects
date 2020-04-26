#include "renderer.h"
#include <iostream>
#include <string>

#include "constant.h"

Renderer::Renderer(const std::size_t screen_width,const std::size_t screen_height):screen_width(screen_width),screen_height(screen_height)
{
   // Initialize SDL
   if (SDL_Init(SDL_INIT_VIDEO) < 0)
   {
      std::cerr << "SDL could not initialize.\n";
      std::cerr << "SDL_Error: " << SDL_GetError() << "\n";
   }

   // Create Window
   sdl_window = SDL_CreateWindow("Minesweeper Game", SDL_WINDOWPOS_CENTERED,
                          SDL_WINDOWPOS_CENTERED, screen_width,
                          screen_height, SDL_WINDOW_SHOWN);

   if (nullptr == sdl_window)
   {
      std::cerr << "Window could not be created.\n";
      std::cerr << " SDL_Error: " << SDL_GetError() << "\n";
   }

   // Create renderer
   sdl_renderer = SDL_CreateRenderer(sdl_window, -1, SDL_RENDERER_ACCELERATED);
   if (nullptr == sdl_renderer)
   {
      std::cerr << "Renderer could not be created.\n";
      std::cerr << "SDL_Error: " << SDL_GetError() << "\n";
   }

   _imagePath.emplace_back("../images/empty.bmp");
   _imagePath.emplace_back("../images/one.bmp");
   _imagePath.emplace_back("../images/two.bmp");
   _imagePath.emplace_back("../images/three.bmp");
   _imagePath.emplace_back("../images/four.bmp");
   _imagePath.emplace_back("../images/five.bmp");
   _imagePath.emplace_back("../images/six.bmp");
   _imagePath.emplace_back("../images/seven.bmp");
   _imagePath.emplace_back("../images/eight.bmp");
   _imagePath.emplace_back("../images/mines.bmp");
   _imagePath.emplace_back("../images/game_over.bmp");

}

Renderer::~Renderer()
{
  SDL_DestroyWindow(sdl_window);
  SDL_Quit();
}

void Renderer::Render(std::vector<std::vector<char>> &board)
{
   SDL_Rect block;
   block.w = BLOCK_WIDTH;
   block.h = BLOCK_HEIGHT;

   block.x = 0;
   block.y = 0;

   for(int i = 0 ; i < board.size(); i++)
   {
      block.y = i*block.h;
      block.x = 0;

      for(int j = 0 ; j < board[0].size(); j++)
      {
         block.x = j*block.w;
         std::string path;

         if(board[i][j] == EMPTY)
         {
            path = _imagePath[0];
         }
         else if(isdigit(board[i][j]))
         {
            path = _imagePath[(int)(board[i][j]) -'0'];
         }

         else if(board[i][j] == MINES_REVEALED)
         {
            path = ("../images/mines.bmp");
         }

         else if(board[i][j] == GAME_OVER)
         {
            path = ("../images/game_over.bmp");
         }

         if(!path.empty())
         {
            SDL_Texture* image_surface = LoadTexture(path);
            if(image_surface != nullptr)
            {
               SDL_RenderCopy(sdl_renderer, image_surface, nullptr, &block);
               SDL_DestroyTexture(image_surface);
               SDL_RenderDrawRect( sdl_renderer, &block );
            }
         }
      }


   }

   SDL_RenderPresent(sdl_renderer);

}
void Renderer::UpdateWindowTitle(int score,int mines)
{
  std::string title{"Minesweeper Score: " + std::to_string(score) + " Mines remaining  " + std::to_string(mines) };
  SDL_SetWindowTitle(sdl_window, title.c_str());
}

SDL_Texture* Renderer::LoadTexture(std::string &path)
{
   SDL_Surface* temp_image_sur = SDL_LoadBMP(path.c_str());
   if(temp_image_sur == nullptr)
   {
      std::cerr << "Image could not be loaded .\n";
      std::cerr << "SDL_Error: " << SDL_GetError() << "\n";
      return nullptr;
   }
   else
   {
      SDL_Texture* image_surface = SDL_CreateTextureFromSurface(sdl_renderer, temp_image_sur);
      if(image_surface == nullptr)
      {
         SDL_FreeSurface(temp_image_sur);
         std::cerr << "Surface Could not be created  .\n";
         std::cerr << "SDL_Error: " << SDL_GetError() << "\n";
         return nullptr;
      }
      SDL_FreeSurface(temp_image_sur);
      return image_surface;

   }
}