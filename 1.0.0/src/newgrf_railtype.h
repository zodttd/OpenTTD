/* $Id: newgrf_railtype.h 19056 2010-02-07 22:22:54Z peter1138 $ */

#ifndef NEWGRF_RAILTYPE_H
#define NEWGRF_RAILTYPE_H

#include "rail.h"

SpriteID GetCustomRailSprite(const RailtypeInfo *rti, TileIndex tile, RailTypeSpriteGroup rtsg);

uint8 GetReverseRailTypeTranslation(RailType railtype, const GRFFile *grffile);

#endif /* NEWGRF_RAILTYPE_H */
