#include "controller.h"
#include <iostream>
#include "SDL.h"
#include "constant.h"

void Controller::HandleInput(bool &running,int &y,int &x,MouseState &mouseState)
{
   SDL_Event e;
   while (SDL_PollEvent(&e))
   {
      if (e.type == SDL_QUIT)
      {
         running = false;
      }
      if( e.type == SDL_MOUSEBUTTONDOWN  )
      {
         int xCurr,yCurr;
         SDL_GetMouseState( &xCurr,&yCurr );
         x = xCurr/BLOCK_WIDTH;
         y = yCurr/BLOCK_HEIGHT;

         if((SDL_GetMouseState(NULL, NULL)& SDL_BUTTON(0)) ||
            (SDL_GetMouseState(NULL, NULL)&SDL_BUTTON(1)))
            mouseState = MouseState::LEFT_MOUSE;
         else if(SDL_GetMouseState(NULL, NULL)&SDL_BUTTON(2))
            mouseState = MouseState::RIGHT_MOUSE;
         else
            mouseState = MouseState::INVALID;
         return;
      }
   }

}