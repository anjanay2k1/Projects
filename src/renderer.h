#ifndef RENDERER_H
#define RENDERER_H

#include <vector>
#include <string>
#include "SDL.h"


class Renderer
{
public:
   Renderer(const std::size_t screen_width, const std::size_t screen_height);;
   ~Renderer();

   void Render(std::vector<std::vector<char>> &board);

   void UpdateWindowTitle(int score,int mines);

 private:

   SDL_Window *sdl_window;
   SDL_Surface *sdl_surface;
   SDL_Renderer *sdl_renderer;

   const std::size_t screen_width;
   const std::size_t screen_height;
   std::vector<std::string> _imagePath;

   SDL_Texture* LoadTexture(std::string &path);


};

#endif