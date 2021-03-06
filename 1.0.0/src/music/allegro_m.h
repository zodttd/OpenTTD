/* $Id: allegro_m.h 18520 2009-12-16 23:49:21Z rubidium $ */

/*
 * This file is part of OpenTTD.
 * OpenTTD is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 2.
 * OpenTTD is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details. You should have received a copy of the GNU General Public License along with OpenTTD. If not, see <http://www.gnu.org/licenses/>.
 */

/** @file allegro_m.h Base support for playing music via allegro. */

#ifndef MUSIC_ALLEGRO_H
#define MUSIC_ALLEGRO_H

#include "music_driver.hpp"

class MusicDriver_Allegro: public MusicDriver {
public:
	/* virtual */ const char *Start(const char * const *param);

	/* virtual */ void Stop();

	/* virtual */ void PlaySong(const char *filename);

	/* virtual */ void StopSong();

	/* virtual */ bool IsSongPlaying();

	/* virtual */ void SetVolume(byte vol);
	/* virtual */ const char *GetName() const { return "allegro"; }
};

class FMusicDriver_Allegro: public MusicDriverFactory<FMusicDriver_Allegro> {
public:
#if !defined(WITH_SDL) && defined(WITH_ALLEGRO)
	/* If SDL is not compiled in but Allegro is, chances are quite big
	 * that Allegro is going to be used. Then favour this sound driver
	 * over extmidi because with extmidi we get crashes. */
	static const int priority = 9;
#else
	static const int priority = 2;
#endif

	/* virtual */ const char *GetName() { return "allegro"; }
	/* virtual */ const char *GetDescription() { return "Allegro MIDI Driver"; }
	/* virtual */ Driver *CreateInstance() { return new MusicDriver_Allegro(); }
};

#endif /* MUSIC_ALLEGRO_H */
