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

#ifdef SDL_VIDEO_RENDER_UIKIT

#include "SDL_video.h"
#include "../SDL_sysvideo.h"
#include "../SDL_yuv_sw_c.h"
#include "../SDL_renderer_sw.h"
#include "SDL_uikitview.h"

extern int VideoAddressCount;
extern unsigned long VideoAddress[20][1024*768];
extern unsigned long VideoBaseAddress[1024*768];
extern SDL_uikitview* sharedSDL_uikitview;

/* SDL surface based renderer implementation */

static SDL_Renderer *SDL_UIKIT_CreateRenderer(SDL_Window * window,
                                              Uint32 flags);
static int SDL_UIKIT_RenderPoints(SDL_Renderer * renderer,
                                  const SDL_Point * points, int count);
static int SDL_UIKIT_RenderLines(SDL_Renderer * renderer,
                                 const SDL_Point * points, int count);
static int SDL_UIKIT_RenderRects(SDL_Renderer * renderer,
                                 const SDL_Rect ** rects, int count);
static int SDL_UIKIT_RenderCopy(SDL_Renderer * renderer,
                                SDL_Texture * texture,
                                const SDL_Rect * srcrect,
                                const SDL_Rect * dstrect);
static int SDL_UIKIT_RenderReadPixels(SDL_Renderer * renderer,
                                      const SDL_Rect * rect,
                                      Uint32 format,
                                      void * pixels, int pitch);
static int SDL_UIKIT_RenderWritePixels(SDL_Renderer * renderer,
                                       const SDL_Rect * rect,
                                       Uint32 format,
                                       const void * pixels, int pitch);
static void SDL_UIKIT_RenderPresent(SDL_Renderer * renderer);
static void SDL_UIKIT_DestroyRenderer(SDL_Renderer * renderer);


SDL_RenderDriver SDL_UIKIT_RenderDriver = {
    SDL_UIKIT_CreateRenderer,
    {
     "uikit",
     (SDL_RENDERER_SINGLEBUFFER | SDL_RENDERER_PRESENTCOPY |
      SDL_RENDERER_PRESENTFLIP2 | SDL_RENDERER_PRESENTFLIP3 |
      SDL_RENDERER_PRESENTDISCARD),
     }
};

typedef struct
{
    int current_screen;
    SDL_Surface *screens[3];
} SDL_UIKIT_RenderData;

SDL_Renderer *
SDL_UIKIT_CreateRenderer(SDL_Window * window, Uint32 flags)
{
    SDL_VideoDisplay *display = SDL_GetDisplayFromWindow(window);
    SDL_DisplayMode *displayMode = &display->current_mode;
    SDL_Renderer *renderer;
    SDL_UIKIT_RenderData *data;
    int i, n;
    int bpp;
    Uint32 Rmask, Gmask, Bmask, Amask;

    if (!SDL_PixelFormatEnumToMasks
        (displayMode->format, &bpp, &Rmask, &Gmask, &Bmask, &Amask)) {
        SDL_SetError("Unknown display format");
        return NULL;
    }

    renderer = (SDL_Renderer *) SDL_calloc(1, sizeof(*renderer));
    if (!renderer) {
        SDL_OutOfMemory();
        return NULL;
    }

    data = (SDL_UIKIT_RenderData *) SDL_malloc(sizeof(*data));
    if (!data) {
        SDL_UIKIT_DestroyRenderer(renderer);
        SDL_OutOfMemory();
        return NULL;
    }
    SDL_zerop(data);

    //renderer->RenderPoints = SDL_UIKIT_RenderPoints;
    //renderer->RenderLines = SDL_UIKIT_RenderLines;
    //renderer->RenderRects = SDL_UIKIT_RenderRects;
    //renderer->RenderCopy = SDL_UIKIT_RenderCopy;
    //renderer->RenderReadPixels = SDL_UIKIT_RenderReadPixels;
    //renderer->RenderWritePixels = SDL_UIKIT_RenderWritePixels;
    renderer->RenderPresent = SDL_UIKIT_RenderPresent;
    renderer->DestroyRenderer = SDL_UIKIT_DestroyRenderer;
    renderer->info.name = SDL_UIKIT_RenderDriver.info.name;
    renderer->info.flags = 0;
    renderer->window = window->id;
    renderer->driverdata = data;
    Setup_SoftwareRenderer(renderer);
/*
    if (flags & SDL_RENDERER_PRESENTFLIP2) {
        renderer->info.flags |= SDL_RENDERER_PRESENTFLIP2;
        n = 2;
    } else if (flags & SDL_RENDERER_PRESENTFLIP3) {
        renderer->info.flags |= SDL_RENDERER_PRESENTFLIP3;
        n = 3;
    } else {
        renderer->info.flags |= SDL_RENDERER_PRESENTCOPY;
        n = 1;
    }
    for (i = 0; i < n; ++i) {
        data->screens[i] =
            SDL_CreateRGBSurface(0, window->w, window->h, bpp, Rmask, Gmask,
                                 Bmask, Amask);
        if (!data->screens[i]) {
            SDL_UIKIT_DestroyRenderer(renderer);
            return NULL;
        }
        SDL_SetSurfacePalette(data->screens[i], display->palette);
    }
    data->current_screen = 0;
*/
    return renderer;
}

static int
SDL_UIKIT_RenderPoints(SDL_Renderer * renderer,
                       const SDL_Point * points, int count)
{
    SDL_UIKIT_RenderData *data =
        (SDL_UIKIT_RenderData *) renderer->driverdata;
    SDL_Surface *target = data->screens[data->current_screen];

    if (renderer->blendMode == SDL_BLENDMODE_NONE ||
        renderer->blendMode == SDL_BLENDMODE_MASK) {
        Uint32 color = SDL_MapRGBA(target->format,
                                   renderer->r, renderer->g, renderer->b,
                                   renderer->a);

        return SDL_DrawPoints(target, points, count, color);
    } else {
        return SDL_BlendPoints(target, points, count, renderer->blendMode,
                               renderer->r, renderer->g, renderer->b,
                               renderer->a);
    }
}

static int
SDL_UIKIT_RenderLines(SDL_Renderer * renderer,
                      const SDL_Point * points, int count)
{
    SDL_UIKIT_RenderData *data =
        (SDL_UIKIT_RenderData *) renderer->driverdata;
    SDL_Surface *target = data->screens[data->current_screen];

    if (renderer->blendMode == SDL_BLENDMODE_NONE ||
        renderer->blendMode == SDL_BLENDMODE_MASK) {
        Uint32 color = SDL_MapRGBA(target->format,
                                   renderer->r, renderer->g, renderer->b,
                                   renderer->a);

        return SDL_DrawLines(target, points, count, color);
    } else {
        return SDL_BlendLines(target, points, count, renderer->blendMode,
                              renderer->r, renderer->g, renderer->b,
                              renderer->a);
    }
}

static int
SDL_UIKIT_RenderRects(SDL_Renderer * renderer, const SDL_Rect ** rects,
                      int count)
{
    SDL_UIKIT_RenderData *data =
        (SDL_UIKIT_RenderData *) renderer->driverdata;
    SDL_Surface *target = data->screens[data->current_screen];

    if (renderer->blendMode == SDL_BLENDMODE_NONE ||
        renderer->blendMode == SDL_BLENDMODE_MASK) {
        Uint32 color = SDL_MapRGBA(target->format,
                                   renderer->r, renderer->g, renderer->b,
                                   renderer->a);

        return SDL_FillRects(target, rects, count, color);
    } else {
        return SDL_BlendRects(target, rects, count,
                              renderer->blendMode,
                              renderer->r, renderer->g, renderer->b,
                              renderer->a);
    }
}

static int
SDL_UIKIT_RenderCopy(SDL_Renderer * renderer, SDL_Texture * texture,
                     const SDL_Rect * srcrect, const SDL_Rect * dstrect)
{
    SDL_UIKIT_RenderData *data =
        (SDL_UIKIT_RenderData *) renderer->driverdata;
    SDL_Window *window = SDL_GetWindowFromID(renderer->window);
    SDL_VideoDisplay *display = SDL_GetDisplayFromWindow(window);

    if (SDL_ISPIXELFORMAT_FOURCC(texture->format)) {
        SDL_Surface *target = data->screens[data->current_screen];
        void *pixels =
            (Uint8 *) target->pixels + dstrect->y * target->pitch +
            dstrect->x * target->format->BytesPerPixel;
        return SDL_SW_CopyYUVToRGB((SDL_SW_YUVTexture *) texture->driverdata,
                                   srcrect, display->current_mode.format,
                                   dstrect->w, dstrect->h, pixels,
                                   target->pitch);
    } else {
        SDL_Surface *surface = (SDL_Surface *) texture->driverdata;
        SDL_Surface *target = data->screens[data->current_screen];
        SDL_Rect real_srcrect = *srcrect;
        SDL_Rect real_dstrect = *dstrect;

        return SDL_LowerBlit(surface, &real_srcrect, target, &real_dstrect);
    }
}

static int
SDL_UIKIT_RenderReadPixels(SDL_Renderer * renderer, const SDL_Rect * rect,
                           Uint32 format, void * pixels, int pitch)
{
    SDL_UIKIT_RenderData *data =
        (SDL_UIKIT_RenderData *) renderer->driverdata;
    SDL_Window *window = SDL_GetWindowFromID(renderer->window);
    SDL_VideoDisplay *display = SDL_GetDisplayFromWindow(window);
    SDL_Surface *screen = data->screens[data->current_screen];
    Uint32 screen_format = display->current_mode.format;
    Uint8 *screen_pixels = (Uint8 *) screen->pixels +
                            rect->y * screen->pitch +
                            rect->x * screen->format->BytesPerPixel;
    int screen_pitch = screen->pitch;

    return SDL_ConvertPixels(rect->w, rect->h,
                             screen_format, screen_pixels, screen_pitch,
                             format, pixels, pitch);
}

static int
SDL_UIKIT_RenderWritePixels(SDL_Renderer * renderer, const SDL_Rect * rect,
                            Uint32 format, const void * pixels, int pitch)
{
    SDL_UIKIT_RenderData *data =
        (SDL_UIKIT_RenderData *) renderer->driverdata;
    SDL_Window *window = SDL_GetWindowFromID(renderer->window);
    SDL_VideoDisplay *display = SDL_GetDisplayFromWindow(window);
    SDL_Surface *screen = data->screens[data->current_screen];
    Uint32 screen_format = display->current_mode.format;
    Uint8 *screen_pixels = (Uint8 *) screen->pixels +
                            rect->y * screen->pitch +
                            rect->x * screen->format->BytesPerPixel;
    int screen_pitch = screen->pitch;

    return SDL_ConvertPixels(rect->w, rect->h,
                             format, pixels, pitch,
                             screen_format, screen_pixels, screen_pitch);
}

static void
SDL_UIKIT_RenderPresent(SDL_Renderer * renderer)
{
    /*static int frame_number;
    SDL_UIKIT_RenderData *data =
        (SDL_UIKIT_RenderData *) renderer->driverdata;

    */

    /* Update the flipping chain, if any */
/*
   if (renderer->info.flags & SDL_RENDERER_PRESENTFLIP2) {
        data->current_screen = (data->current_screen + 1) % 2;
    } else if (renderer->info.flags & SDL_RENDERER_PRESENTFLIP3) {
        data->current_screen = (data->current_screen + 1) % 3;
    }
*/
}

static void
SDL_UIKIT_DestroyRenderer(SDL_Renderer * renderer)
{
    SDL_UIKIT_RenderData *data =
        (SDL_UIKIT_RenderData *) renderer->driverdata;
    int i;

    if (data) {
        for (i = 0; i < SDL_arraysize(data->screens); ++i) {
            if (data->screens[i]) {
                SDL_FreeSurface(data->screens[i]);
            }
        }
        SDL_free(data);
    }
    SDL_free(renderer);
}
#endif

/* vi: set ts=4 sw=4 expandtab: */
