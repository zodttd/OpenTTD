/*
    SDL - Simple DirectMedia Layer
    Copyright (C) 1997-2009 Sam Lantinga

    This library is free software; you can redistribute it and/or
    modify it under the terms of the GNU Lesser General Public
    License as published by the Free Software Foundation; either
    version 2.1 of the License, or (at your option) any later version.

    This library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
    Lesser General Public License for more details.

    You should have received a copy of the GNU Lesser General Public
    License along with this library; if not, write to the Free Software
    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

    Sam Lantinga
    slouken@libsdl.org
*/
#include "SDL_config.h"

#include "SDL_video.h"
#include "SDL_mouse.h"
#include "../SDL_sysvideo.h"
#include "../SDL_pixels_c.h"
#include "../../events/SDL_events_c.h"

#include "SDL_uikitvideo.h"
#include "SDL_uikitevents.h"
#include "SDL_uikitwindow.h"
#include "SDL_uikitopengles.h"

#include "SDL_renderer_sw.h"
#include "SDL_renderer_gles.h"

#include "SDL_uikitrender_c.h"

#define UIKITVID_DRIVER_NAME "uikit"

/* Initialization/Query functions */
static int UIKit_VideoInit(_THIS);
static int UIKit_SetDisplayMode(_THIS, SDL_DisplayMode * mode);
static void UIKit_VideoQuit(_THIS);

/* DUMMY driver bootstrap functions */

static int
UIKit_Available(void)
{
	return (1);
}

static void UIKit_DeleteDevice(SDL_VideoDevice * device)
{
    SDL_free(device);
}

static SDL_VideoDevice *
UIKit_CreateDevice(int devindex)
{
  SDL_VideoDevice *device;

  /* Initialize all variables that we clean on shutdown */
  device = (SDL_VideoDevice *) SDL_calloc(1, sizeof(SDL_VideoDevice));
  if (!device) {
      SDL_OutOfMemory();
      if (device) {
          SDL_free(device);
      }
      return (0);
  }

  /* Set the function pointers */
  device->VideoInit = UIKit_VideoInit;
  device->VideoQuit = UIKit_VideoQuit;
  device->SetDisplayMode = UIKit_SetDisplayMode;
  device->PumpEvents = UIKit_PumpEvents;
	device->CreateWindow = UIKit_CreateWindow;
	device->DestroyWindow = UIKit_DestroyWindow;
	
	
	/* OpenGL (ES) functions */
  /*
	device->GL_MakeCurrent		= UIKit_GL_MakeCurrent;
	device->GL_SwapWindow		= UIKit_GL_SwapWindow;
	device->GL_CreateContext	= UIKit_GL_CreateContext;
	device->GL_DeleteContext    = UIKit_GL_DeleteContext;
	device->GL_GetProcAddress   = UIKit_GL_GetProcAddress;
	device->GL_LoadLibrary	    = UIKit_GL_LoadLibrary;
  */
	device->free = UIKit_DeleteDevice;
	//device->gl_config.accelerated = 1;
	
    return device;
}

VideoBootStrap UIKIT_bootstrap = {
    UIKITVID_DRIVER_NAME, "SDL UIKit video driver",
    UIKit_Available, UIKit_CreateDevice
};


int
UIKit_VideoInit(_THIS)
{
  SDL_DisplayMode mode;
  
  mode.format = SDL_PIXELFORMAT_ARGB8888;
  mode.w = 768;
  mode.h = 1024;
  mode.refresh_rate = 0;
  mode.driverdata = NULL;
  if (SDL_AddBasicVideoDisplay(&mode) < 0) {
    return -1;
  }
  SDL_AddRenderDriver(&_this->displays[0], &SDL_UIKIT_RenderDriver);

  SDL_zero(mode);
  mode.format = SDL_PIXELFORMAT_ARGB8888;
  mode.w = 1024;
  mode.h = 768;
  mode.refresh_rate = 0;
  mode.driverdata = NULL;
  SDL_AddDisplayMode(&_this->displays[0], &mode);
  
  SDL_zero(mode);
  SDL_AddDisplayMode(&_this->displays[0], &mode);

  /* We're done! */
  return 0;
}

static int
UIKit_SetDisplayMode(_THIS, SDL_DisplayMode * mode)
{
    return 0;
}

void
UIKit_VideoQuit(_THIS)
{
}

/* vi: set ts=4 sw=4 expandtab: */
