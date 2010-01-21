# Auto-generated file from 'Makefile.src.in' -- DO NOT EDIT
# $Id: Makefile.src.in 18427 2009-12-07 20:22:33Z rubidium $

# This file is part of OpenTTD.
# OpenTTD is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 2.
# OpenTTD is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU General Public License for more details. You should have received a copy of the GNU General Public License along with OpenTTD. If not, see <http://www.gnu.org/licenses/>.

CC_HOST        = arm-apple-darwin9-gcc
CXX_HOST       = arm-apple-darwin9-g++
CC_BUILD       = /Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/arm-apple-darwin9-gcc-4.0.1
CXX_BUILD      = /Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/arm-apple-darwin9-g++-4.0.1
WINDRES        = 
STRIP          =  
CFLAGS         = -O2 -fomit-frame-pointer -march=armv6 -fno-common -fno-builtin -miphoneos-version-min=2.2.1 -fomit-frame-pointer -I/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS2.2.1.sdk/usr/include -I/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS2.2.1.sdk/usr/lib/gcc/arm-apple-darwin9/4.0.1/include -isysroot /Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS2.2.1.sdk -O3  -Wall -Wno-multichar -Wsign-compare -Wundef -Wwrite-strings -Wpointer-arith -W -Wno-unused-parameter -Wformat=2 -Wredundant-decls -Wno-unused-variable -fno-strict-aliasing -Wcast-qual -DUNIX -DWITH_SDL -I/Users/me/dev/openttd/openttd-1.0.0-beta2-source/projects/openttd/include -DWITH_ZLIB -I/Users/me/dev/openttd/openttd-1.0.0-beta2-source/src/3rdparty/squirrel/include -DWITH_PNG   -DWITH_FREETYPE -I/Users/me/dev/openttd/openttd-1.0.0-beta2-source/projects/openttd/include/freetype2 -I/Users/me/dev/openttd/openttd-1.0.0-beta2-source/projects/openttd/include  -DENABLE_NETWORK -DNDEBUG -DWITH_PERSONAL_DIR -DPERSONAL_DIR=\".openttd\" -DGLOBAL_DATA_DIR=\".//share/games/openttd\"
CFLAGS_BUILD   =  -Wall -Wno-multichar -Wsign-compare -Wundef -Wwrite-strings -Wpointer-arith -W -Wno-unused-parameter -Wformat=2 -Wredundant-decls -Wno-unused-variable -fno-strict-aliasing -Wcast-qual
CXXFLAGS       = -march=armv6 -fno-common -fno-builtin -miphoneos-version-min=2.2.1 -fomit-frame-pointer -I/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS2.2.1.sdk/usr/include -I/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS2.2.1.sdk/usr/lib/gcc/arm-apple-darwin9/4.0.1/include -isysroot /Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS2.2.1.sdk -O3 
CXXFLAGS_BUILD = 
LIBS           = -lstdc++ -lpthread -lc /Users/me/dev/openttd/openttd-1.0.0-beta2-source/projects/openttd/lib/libSDLiPhoneOS.a -lz -L/Users/me/dev/openttd/openttd-1.0.0-beta2-source/projects/openttd/lib -lpng  -L/Users/me/dev/openttd/openttd-1.0.0-beta2-source/projects/openttd/lib -lfreetype -lz 
LDFLAGS        = -O2 -fomit-frame-pointer -F/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS2.2.1.sdk/System/Library/Frameworks -fomit-frame-pointer -march=armv6 -fno-common -fno-builtin -miphoneos-version-min=2.2.1 -fomit-frame-pointer -I/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS2.2.1.sdk/usr/include -I/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS2.2.1.sdk/usr/lib/gcc/arm-apple-darwin9/4.0.1/include -isysroot /Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS2.2.1.sdk -O3 -L/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS2.2.1.sdk/usr/lib -lobjc -lpthread -framework CoreFoundation -framework Foundation -framework UIKit -framework QuartzCore -framework CoreGraphics -framework CoreLocation -framework AudioToolbox -framework OpenGLES  -fno-strict-aliasing
LDFLAGS_BUILD  =  -fno-strict-aliasing
ROOT_DIR       = /Users/me/dev/openttd/openttd-1.0.0-beta2-source
BIN_DIR        = /Users/me/dev/openttd/openttd-1.0.0-beta2-source/bin
LANG_DIR       = /Users/me/dev/openttd/openttd-1.0.0-beta2-source/src/lang
SRC_OBJS_DIR   = /Users/me/dev/openttd/openttd-1.0.0-beta2-source/objs/release
LANG_OBJS_DIR  = /Users/me/dev/openttd/openttd-1.0.0-beta2-source/objs/lang
SRC_DIR        = /Users/me/dev/openttd/openttd-1.0.0-beta2-source/src
SCRIPT_SRC_DIR = /Users/me/dev/openttd/openttd-1.0.0-beta2-source/src/3rdparty/squirrel/include
MEDIA_DIR      = /Users/me/dev/openttd/openttd-1.0.0-beta2-source/media
TTD            = openttd
STRGEN         = strgen
ENDIAN_CHECK   = endian_check
DEPEND         = depend
ENDIAN_FORCE   = LE
OS             = UNIX
STAGE          = [SRC]
MAKEDEPEND     = $(SRC_OBJS_DIR)/$(DEPEND)
CFLAGS_MAKEDEP = -D__DBL_MIN_EXP__ -D__FLT_MIN__ -D__CHAR_BIT__ -D__ENVIRONMENT_IPHONE_OS_VERSION_MIN_REQUIRED__ -D__WCHAR_MAX__ -D__DBL_DENORM_MIN__ -D__FLT_EVAL_METHOD__ -D__DBL_MIN_10_EXP__ -D__FINITE_MATH_ONLY__ -D__ARMEL__ -D__GNUC_PATCHLEVEL__ -D__SHRT_MAX__ -D__LDBL_MAX__ -D__APPLE_CC__ -D__UINTMAX_TYPE__ -D__OPTIMIZE__ -D__LDBL_MAX_EXP__ -D__SCHAR_MAX__ -D__USER_LABEL_PREFIX__ -D__STDC_HOSTED__ -D__LDBL_HAS_INFINITY__ -D__DBL_DIG__ -D__FLT_EPSILON__ -D__APCS_32__ -D__GXX_WEAK__ -D__LDBL_MIN__ -D__strong -D__APPLE__ -D__DECIMAL_DIG__ -D__LDBL_HAS_QUIET_NAN__ -D__DYNAMIC__ -D__GNUC__ -D__DBL_MAX__ -D__DBL_HAS_INFINITY__ -D__THUMB_INTERWORK__ -DOBJC_NEW_PROPERTIES -D__cplusplus -D__USING_SJLJ_EXCEPTIONS__ -D__DEPRECATED -D__weak -D__DBL_MAX_EXP__ -D__GNUG__ -D__LONG_LONG_MAX__ -D__GXX_ABI_VERSION -D__FLT_MIN_EXP__ -D__DBL_MIN__ -D__FLT_MIN_10_EXP__ -D__DBL_HAS_QUIET_NAN__ -D__REGISTER_PREFIX__ -D__FLT_MANT_DIG__ -D__VERSION__ -D__arm -D__SIZE_TYPE__ -D__FLT_RADIX__ -D__LDBL_EPSILON__ -D__VFP_FP__ -D__ARM_ARCH_6__ -D__FLT_HAS_QUIET_NAN__ -D__FLT_MAX_10_EXP__ -D__LONG_MAX__ -D__FLT_HAS_INFINITY__ -D__LITTLE_ENDIAN__ -D__EXCEPTIONS -D__LDBL_MANT_DIG__ -D__CONSTANT_CFSTRINGS__ -D__WCHAR_TYPE__ -D__FLT_DIG__ -D__INT_MAX__ -D__FLT_MAX_EXP__ -D__DBL_MANT_DIG__ -D__WINT_TYPE__ -D__LDBL_MIN_EXP__ -D__arm__ -D__MACH__ -D__LDBL_MAX_10_EXP__ -D__DBL_EPSILON__ -D__INTMAX_MAX__ -D__FLT_DENORM_MIN__ -D__PIC__ -D__FLT_MAX__ -D__INTMAX_TYPE__ -D__GNUC_MINOR__ -D__DBL_MAX_10_EXP__ -D__LDBL_DENORM_MIN__ -D__PTRDIFF_TYPE__ -D__LDBL_MIN_10_EXP__ -D__LDBL_DIG__ -D__GNUC_GNU_INLINE__ -D__private_extern__  -O2 -fomit-frame-pointer -march=armv6 -fno-common -fno-builtin -miphoneos-version-min=2.2.1 -fomit-frame-pointer   -isysroot -Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS2.2.1.sdk -O3  -Wall -Wno-multichar -Wsign-compare -Wundef -Wwrite-strings -Wpointer-arith -W -Wno-unused-parameter -Wformat=2 -Wredundant-decls -Wno-unused-variable -fno-strict-aliasing -Wcast-qual -DUNIX -DWITH_SDL  -DWITH_ZLIB  -DWITH_PNG   -DWITH_FREETYPE    -DENABLE_NETWORK -DNDEBUG -DWITH_PERSONAL_DIR -DPERSONAL_DIR=".openttd" -DGLOBAL_DATA_DIR=".//share/games/openttd" -march=armv6 -fno-common -fno-builtin -miphoneos-version-min=2.2.1 -fomit-frame-pointer   -isysroot -Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS2.2.1.sdk -O3 
SORT           = sort -u
REVISION       = 1.0.0-beta2
AWK            = awk
CONFIG_CACHE_COMPILER = $(SRC_OBJS_DIR)/config.cache.compiler
CONFIG_CACHE_LINKER   = $(SRC_OBJS_DIR)/config.cache.linker
CONFIG_CACHE_ENDIAN   = $(SRC_OBJS_DIR)/config.cache.endian
CONFIG_CACHE_SOURCE   = $(SRC_OBJS_DIR)/config.cache.source
CONFIG_CACHE_VERSION  = $(SRC_OBJS_DIR)/config.cache.version

OBJS_C   := 3rdparty/minilzo/minilzo.o 
OBJS_CPP := 3rdparty/md5/md5.o 3rdparty/squirrel/sqstdlib/sqstdaux.o 3rdparty/squirrel/sqstdlib/sqstdmath.o 3rdparty/squirrel/squirrel/sqapi.o 3rdparty/squirrel/squirrel/sqbaselib.o 3rdparty/squirrel/squirrel/sqclass.o 3rdparty/squirrel/squirrel/sqcompiler.o 3rdparty/squirrel/squirrel/sqdebug.o 3rdparty/squirrel/squirrel/sqfuncstate.o 3rdparty/squirrel/squirrel/sqlexer.o 3rdparty/squirrel/squirrel/sqmem.o 3rdparty/squirrel/squirrel/sqobject.o 3rdparty/squirrel/squirrel/sqstate.o 3rdparty/squirrel/squirrel/sqtable.o 3rdparty/squirrel/squirrel/sqvm.o ai/ai_config.o ai/ai_core.o ai/ai_gui.o ai/ai_info.o ai/ai_info_dummy.o ai/ai_instance.o ai/ai_scanner.o ai/api/ai_abstractlist.o ai/api/ai_accounting.o ai/api/ai_airport.o ai/api/ai_base.o ai/api/ai_basestation.o ai/api/ai_bridge.o ai/api/ai_bridgelist.o ai/api/ai_cargo.o ai/api/ai_cargolist.o ai/api/ai_company.o ai/api/ai_controller.o ai/api/ai_date.o ai/api/ai_depotlist.o ai/api/ai_engine.o ai/api/ai_enginelist.o ai/api/ai_error.o ai/api/ai_event.o ai/api/ai_event_types.o ai/api/ai_execmode.o ai/api/ai_gamesettings.o ai/api/ai_group.o ai/api/ai_grouplist.o ai/api/ai_industry.o ai/api/ai_industrylist.o ai/api/ai_industrytype.o ai/api/ai_industrytypelist.o ai/api/ai_list.o ai/api/ai_log.o ai/api/ai_map.o ai/api/ai_marine.o ai/api/ai_object.o ai/api/ai_order.o ai/api/ai_rail.o ai/api/ai_railtypelist.o ai/api/ai_road.o ai/api/ai_sign.o ai/api/ai_signlist.o ai/api/ai_station.o ai/api/ai_stationlist.o ai/api/ai_subsidy.o ai/api/ai_subsidylist.o ai/api/ai_testmode.o ai/api/ai_tile.o ai/api/ai_tilelist.o ai/api/ai_town.o ai/api/ai_townlist.o ai/api/ai_tunnel.o ai/api/ai_vehicle.o ai/api/ai_vehiclelist.o ai/api/ai_waypoint.o ai/api/ai_waypointlist.o aircraft_cmd.o aircraft_gui.o airport.o airport_gui.o animated_tile.o articulated_vehicles.o autoreplace.o autoreplace_cmd.o autoreplace_gui.o blitter/32bpp_anim.o blitter/32bpp_base.o blitter/32bpp_optimized.o blitter/32bpp_simple.o blitter/8bpp_base.o blitter/8bpp_debug.o blitter/8bpp_optimized.o blitter/8bpp_simple.o blitter/null.o bmp.o bridge_gui.o bridge_map.o build_vehicle_gui.o callback_table.o cargopacket.o cargotype.o cheat.o cheat_gui.o clear_cmd.o command.o company_cmd.o company_gui.o console.o console_cmds.o console_gui.o core/alloc_func.o core/bitmath_func.o core/geometry_func.o core/math_func.o core/random_func.o crashlog.o currency.o date.o date_gui.o debug.o dedicated.o depot.o depot_gui.o disaster_cmd.o dock_gui.o driver.o dummy_land.o economy.o effectvehicle.o elrail.o engine.o engine_gui.o fileio.o fios.o fontcache.o gamelog.o genworld.o genworld_gui.o gfx.o gfxinit.o graph_gui.o group_cmd.o group_gui.o heightmap.o highscore.o highscore_gui.o industry_cmd.o industry_gui.o ini.o intro_gui.o landscape.o main_gui.o map.o misc.o misc/countedobj.o misc/dbg_helpers.o misc_cmd.o misc_gui.o mixer.o music.o music/extmidi.o music/null_m.o music_gui.o network/core/address.o network/core/core.o network/core/host.o network/core/packet.o network/core/tcp.o network/core/tcp_connect.o network/core/tcp_content.o network/core/tcp_game.o network/core/udp.o network/network.o network/network_chat_gui.o network/network_client.o network/network_command.o network/network_content.o network/network_content_gui.o network/network_gamelist.o network/network_gui.o network/network_server.o network/network_udp.o newgrf.o newgrf_canal.o newgrf_cargo.o newgrf_commons.o newgrf_config.o newgrf_engine.o newgrf_generic.o newgrf_gui.o newgrf_house.o newgrf_industries.o newgrf_industrytiles.o newgrf_sound.o newgrf_spritegroup.o newgrf_station.o newgrf_storage.o newgrf_text.o newgrf_town.o newgrf_townname.o news_gui.o openttd.o order_cmd.o order_gui.o os/unix/crashlog_unix.o os/unix/unix.o os_timer.o osk_gui.o pathfinder/npf/aystar.o pathfinder/npf/npf.o pathfinder/npf/queue.o pathfinder/opf/opf_ship.o pathfinder/yapf/yapf_rail.o pathfinder/yapf/yapf_road.o pathfinder/yapf/yapf_ship.o pbs.o rail.o rail_cmd.o rail_gui.o rev.o road.o road_cmd.o road_gui.o road_map.o roadstop.o roadveh_cmd.o roadveh_gui.o saveload/afterload.o saveload/ai_sl.o saveload/animated_tile_sl.o saveload/autoreplace_sl.o saveload/cargopacket_sl.o saveload/cheat_sl.o saveload/company_sl.o saveload/depot_sl.o saveload/economy_sl.o saveload/engine_sl.o saveload/gamelog_sl.o saveload/group_sl.o saveload/industry_sl.o saveload/labelmaps_sl.o saveload/map_sl.o saveload/misc_sl.o saveload/newgrf_sl.o saveload/oldloader.o saveload/oldloader_sl.o saveload/order_sl.o saveload/saveload.o saveload/signs_sl.o saveload/station_sl.o saveload/strings_sl.o saveload/subsidy_sl.o saveload/town_sl.o saveload/vehicle_sl.o saveload/waypoint_sl.o screenshot.o script/script_info.o script/script_scanner.o script/squirrel.o script/squirrel_std.o sdl.o settings.o settings_gui.o ship_cmd.o ship_gui.o signal.o signs.o signs_cmd.o signs_gui.o smallmap_gui.o sound.o sound/null_s.o sound/sdl_s.o spritecache.o spriteloader/grf.o spriteloader/png.o station.o station_cmd.o station_gui.o statusbar_gui.o string.o strings.o subsidy.o subsidy_gui.o terraform_cmd.o terraform_gui.o texteff.o tgp.o thread/thread_pthread.o tile_map.o timetable_cmd.o timetable_gui.o toolbar_gui.o town_cmd.o town_gui.o townname.o train_cmd.o train_gui.o transparency_gui.o tree_cmd.o tree_gui.o tunnel_map.o tunnelbridge_cmd.o unmovable_cmd.o vehicle.o vehicle_cmd.o vehicle_gui.o vehiclelist.o video/dedicated_v.o video/null_v.o video/sdl_v.o viewport.o viewport_gui.o water_cmd.o waypoint.o waypoint_cmd.o waypoint_gui.o widget.o widgets/dropdown.o window.o 
OBJS_MM  := 
OBJS_RC  := 
OBJS     := $(OBJS_C) $(OBJS_CPP) $(OBJS_MM) $(OBJS_RC)
SRCS     := 3rdparty/md5/md5.cpp 3rdparty/minilzo/minilzo.c 3rdparty/squirrel/sqstdlib/sqstdaux.cpp 3rdparty/squirrel/sqstdlib/sqstdmath.cpp 3rdparty/squirrel/squirrel/sqapi.cpp 3rdparty/squirrel/squirrel/sqbaselib.cpp 3rdparty/squirrel/squirrel/sqclass.cpp 3rdparty/squirrel/squirrel/sqcompiler.cpp 3rdparty/squirrel/squirrel/sqdebug.cpp 3rdparty/squirrel/squirrel/sqfuncstate.cpp 3rdparty/squirrel/squirrel/sqlexer.cpp 3rdparty/squirrel/squirrel/sqmem.cpp 3rdparty/squirrel/squirrel/sqobject.cpp 3rdparty/squirrel/squirrel/sqstate.cpp 3rdparty/squirrel/squirrel/sqtable.cpp 3rdparty/squirrel/squirrel/sqvm.cpp ai/ai_config.cpp ai/ai_core.cpp ai/ai_gui.cpp ai/ai_info.cpp ai/ai_info_dummy.cpp ai/ai_instance.cpp ai/ai_scanner.cpp ai/api/ai_abstractlist.cpp ai/api/ai_accounting.cpp ai/api/ai_airport.cpp ai/api/ai_base.cpp ai/api/ai_basestation.cpp ai/api/ai_bridge.cpp ai/api/ai_bridgelist.cpp ai/api/ai_cargo.cpp ai/api/ai_cargolist.cpp ai/api/ai_company.cpp ai/api/ai_controller.cpp ai/api/ai_date.cpp ai/api/ai_depotlist.cpp ai/api/ai_engine.cpp ai/api/ai_enginelist.cpp ai/api/ai_error.cpp ai/api/ai_event.cpp ai/api/ai_event_types.cpp ai/api/ai_execmode.cpp ai/api/ai_gamesettings.cpp ai/api/ai_group.cpp ai/api/ai_grouplist.cpp ai/api/ai_industry.cpp ai/api/ai_industrylist.cpp ai/api/ai_industrytype.cpp ai/api/ai_industrytypelist.cpp ai/api/ai_list.cpp ai/api/ai_log.cpp ai/api/ai_map.cpp ai/api/ai_marine.cpp ai/api/ai_object.cpp ai/api/ai_order.cpp ai/api/ai_rail.cpp ai/api/ai_railtypelist.cpp ai/api/ai_road.cpp ai/api/ai_sign.cpp ai/api/ai_signlist.cpp ai/api/ai_station.cpp ai/api/ai_stationlist.cpp ai/api/ai_subsidy.cpp ai/api/ai_subsidylist.cpp ai/api/ai_testmode.cpp ai/api/ai_tile.cpp ai/api/ai_tilelist.cpp ai/api/ai_town.cpp ai/api/ai_townlist.cpp ai/api/ai_tunnel.cpp ai/api/ai_vehicle.cpp ai/api/ai_vehiclelist.cpp ai/api/ai_waypoint.cpp ai/api/ai_waypointlist.cpp aircraft_cmd.cpp aircraft_gui.cpp airport.cpp airport_gui.cpp animated_tile.cpp articulated_vehicles.cpp autoreplace.cpp autoreplace_cmd.cpp autoreplace_gui.cpp blitter/32bpp_anim.cpp blitter/32bpp_base.cpp blitter/32bpp_optimized.cpp blitter/32bpp_simple.cpp blitter/8bpp_base.cpp blitter/8bpp_debug.cpp blitter/8bpp_optimized.cpp blitter/8bpp_simple.cpp blitter/null.cpp bmp.cpp bridge_gui.cpp bridge_map.cpp build_vehicle_gui.cpp callback_table.cpp cargopacket.cpp cargotype.cpp cheat.cpp cheat_gui.cpp clear_cmd.cpp command.cpp company_cmd.cpp company_gui.cpp console.cpp console_cmds.cpp console_gui.cpp core/alloc_func.cpp core/bitmath_func.cpp core/geometry_func.cpp core/math_func.cpp core/random_func.cpp crashlog.cpp currency.cpp date.cpp date_gui.cpp debug.cpp dedicated.cpp depot.cpp depot_gui.cpp disaster_cmd.cpp dock_gui.cpp driver.cpp dummy_land.cpp economy.cpp effectvehicle.cpp elrail.cpp engine.cpp engine_gui.cpp fileio.cpp fios.cpp fontcache.cpp gamelog.cpp genworld.cpp genworld_gui.cpp gfx.cpp gfxinit.cpp graph_gui.cpp group_cmd.cpp group_gui.cpp heightmap.cpp highscore.cpp highscore_gui.cpp industry_cmd.cpp industry_gui.cpp ini.cpp intro_gui.cpp landscape.cpp main_gui.cpp map.cpp misc.cpp misc/countedobj.cpp misc/dbg_helpers.cpp misc_cmd.cpp misc_gui.cpp mixer.cpp music.cpp music/extmidi.cpp music/null_m.cpp music_gui.cpp network/core/address.cpp network/core/core.cpp network/core/host.cpp network/core/packet.cpp network/core/tcp.cpp network/core/tcp_connect.cpp network/core/tcp_content.cpp network/core/tcp_game.cpp network/core/udp.cpp network/network.cpp network/network_chat_gui.cpp network/network_client.cpp network/network_command.cpp network/network_content.cpp network/network_content_gui.cpp network/network_gamelist.cpp network/network_gui.cpp network/network_server.cpp network/network_udp.cpp newgrf.cpp newgrf_canal.cpp newgrf_cargo.cpp newgrf_commons.cpp newgrf_config.cpp newgrf_engine.cpp newgrf_generic.cpp newgrf_gui.cpp newgrf_house.cpp newgrf_industries.cpp newgrf_industrytiles.cpp newgrf_sound.cpp newgrf_spritegroup.cpp newgrf_station.cpp newgrf_storage.cpp newgrf_text.cpp newgrf_town.cpp newgrf_townname.cpp news_gui.cpp openttd.cpp order_cmd.cpp order_gui.cpp os/unix/crashlog_unix.cpp os/unix/unix.cpp os_timer.cpp osk_gui.cpp pathfinder/npf/aystar.cpp pathfinder/npf/npf.cpp pathfinder/npf/queue.cpp pathfinder/opf/opf_ship.cpp pathfinder/yapf/yapf_rail.cpp pathfinder/yapf/yapf_road.cpp pathfinder/yapf/yapf_ship.cpp pbs.cpp rail.cpp rail_cmd.cpp rail_gui.cpp rev.cpp road.cpp road_cmd.cpp road_gui.cpp road_map.cpp roadstop.cpp roadveh_cmd.cpp roadveh_gui.cpp saveload/afterload.cpp saveload/ai_sl.cpp saveload/animated_tile_sl.cpp saveload/autoreplace_sl.cpp saveload/cargopacket_sl.cpp saveload/cheat_sl.cpp saveload/company_sl.cpp saveload/depot_sl.cpp saveload/economy_sl.cpp saveload/engine_sl.cpp saveload/gamelog_sl.cpp saveload/group_sl.cpp saveload/industry_sl.cpp saveload/labelmaps_sl.cpp saveload/map_sl.cpp saveload/misc_sl.cpp saveload/newgrf_sl.cpp saveload/oldloader.cpp saveload/oldloader_sl.cpp saveload/order_sl.cpp saveload/saveload.cpp saveload/signs_sl.cpp saveload/station_sl.cpp saveload/strings_sl.cpp saveload/subsidy_sl.cpp saveload/town_sl.cpp saveload/vehicle_sl.cpp saveload/waypoint_sl.cpp screenshot.cpp script/script_info.cpp script/script_scanner.cpp script/squirrel.cpp script/squirrel_std.cpp sdl.cpp settings.cpp settings_gui.cpp ship_cmd.cpp ship_gui.cpp signal.cpp signs.cpp signs_cmd.cpp signs_gui.cpp smallmap_gui.cpp sound.cpp sound/null_s.cpp sound/sdl_s.cpp spritecache.cpp spriteloader/grf.cpp spriteloader/png.cpp station.cpp station_cmd.cpp station_gui.cpp statusbar_gui.cpp string.cpp strings.cpp subsidy.cpp subsidy_gui.cpp terraform_cmd.cpp terraform_gui.cpp texteff.cpp tgp.cpp thread/thread_pthread.cpp tile_map.cpp timetable_cmd.cpp timetable_gui.cpp toolbar_gui.cpp town_cmd.cpp town_gui.cpp townname.cpp train_cmd.cpp train_gui.cpp transparency_gui.cpp tree_cmd.cpp tree_gui.cpp tunnel_map.cpp tunnelbridge_cmd.cpp unmovable_cmd.cpp vehicle.cpp vehicle_cmd.cpp vehicle_gui.cpp vehiclelist.cpp video/dedicated_v.cpp video/null_v.cpp video/sdl_v.cpp viewport.cpp viewport_gui.cpp water_cmd.cpp waypoint.cpp waypoint_cmd.cpp waypoint_gui.cpp widget.cpp widgets/dropdown.cpp window.cpp 

# All C-files depend on those 3 files
FILE_DEP := $(CONFIG_CACHE_COMPILER) endian_target.h
# Create all dirs and subdirs
RES      := $(shell mkdir -p $(BIN_DIR) $(sort $(dir $(OBJS))))

# Make sure endian_target.h is reasable as if it was in the src/ dir
CFLAGS += -I $(SRC_OBJS_DIR) -I $(LANG_OBJS_DIR)
CFLAGS_MAKEDEP += -I $(SRC_OBJS_DIR) -I $(LANG_OBJS_DIR) -I $(SCRIPT_SRC_DIR)

ENDIAN_TARGETS := endian_target.h $(ENDIAN_CHECK)

# Check if we want to show what we are doing
ifdef VERBOSE
	Q =
	E = @true
else
	Q = @
	E = @echo
endif

# Our default target
all: $(BIN_DIR)/$(TTD)

# This are 2 rules that are pointing back to STRGEN stuff.
#  There is not really a need to have them here, but in case
#  some weirdo wants to run 'make' in the 'src' dir and expects
#  the languages to be recompiled, this catches that case and
#  takes care of it nicely.
$(LANG_OBJS_DIR)/$(STRGEN):
	$(MAKE) -C $(LANG_OBJS_DIR) $(STRGEN)

$(LANG_OBJS_DIR)/table/strings.h: $(LANG_DIR)/english.txt $(LANG_OBJS_DIR)/$(STRGEN)
	$(MAKE) -C $(LANG_OBJS_DIR) table/strings.h

# Always run version detection, so we always have an accurate modified
# flag
VERSIONS := $(shell AWK="$(AWK)" "$(ROOT_DIR)/findversion.sh")
MODIFIED := $(shell echo "$(VERSIONS)" | cut -f 3 -d'	')

ifdef REVISION
# Use specified revision (which should be of the form "r000").
REV := $(REVISION)
REV_NR := $(shell echo $(REVISION) | sed "s@[^0-9]@@g")
else
# Use autodetected revisions
REV      := $(shell echo "$(VERSIONS)" | cut -f 1 -d'	')
REV_NR   := $(shell echo "$(VERSIONS)" | cut -f 2 -d'	')
endif

# Make sure we have something in REV and REV_NR
ifeq ($(REV),)
REV := norev000
endif
ifeq ($(REV_NR),)
REV_NR := 0
endif

# This helps to recompile if flags change
RES := $(shell if [ "`cat $(CONFIG_CACHE_COMPILER) 2>/dev/null`" != "$(CXXFLAGS) $(CFLAGS)" ]; then echo "$(CXXFLAGS) $(CFLAGS)" > $(CONFIG_CACHE_COMPILER); fi )
RES := $(shell if [ "`cat $(CONFIG_CACHE_LINKER) 2>/dev/null`" != "$(LDFLAGS) $(LIBS)" ]; then echo "$(LDFLAGS) $(LIBS)" > $(CONFIG_CACHE_LINKER); fi )
RES := $(shell if [ "`cat $(CONFIG_CACHE_ENDIAN) 2>/dev/null`" != "$(ENDIAN_FORCE)" ]; then echo "$(ENDIAN_FORCE)" > $(CONFIG_CACHE_ENDIAN); fi )

# If there is a change in the source-file-list, make sure we recheck the deps
RES := $(shell if [ "`cat $(CONFIG_CACHE_SOURCE) 2>/dev/null`" != "$(SRCS)" ]; then echo "$(SRCS)" > $(CONFIG_CACHE_SOURCE); fi )
# If there is a change in the revision, make sure we recompile rev.cpp
RES := $(shell if [ "`cat $(CONFIG_CACHE_VERSION) 2>/dev/null`" != "$(REV) $(MODIFIED)" ]; then echo "$(REV) $(MODIFIED)" > $(CONFIG_CACHE_VERSION); fi )

ifndef MAKEDEPEND
# The slow, but always correct, dep-check
DEP_MASK := %.d
DEPS     := $(OBJS:%.o=%.d)

# Only include the deps if we are compiling everything
ifeq ($(filter $(ENDIAN_TARGETS) %.o clean mrproper, $(MAKECMDGOALS)),)
-include $(DEPS)
else
# In case we want to compile a single target, include the .d file for it
ifneq ($(filter %.o, $(MAKECMDGOALS)),)
SINGLE_DEP := $(filter %.o, $(MAKECMDGOALS))
-include $(SINGLE_DEP:%.o=%.d)
endif
endif

# Find the deps via GCC. Rarely wrong, but a bit slow

$(OBJS_C:%.o=%.d): %.d: $(SRC_DIR)/%.c $(FILE_DEP)
	$(E) '$(STAGE) DEP $(<:$(SRC_DIR)/%.c=%.c)'
	$(Q)$(CC_HOST) $(CFLAGS) -MM $< | sed 's@^$(@F:%.d=%.o):@$@ $(@:%.d=%.o):@' > $@

$(OBJS_CPP:%.o=%.d): %.d: $(SRC_DIR)/%.cpp $(FILE_DEP)
	$(E) '$(STAGE) DEP $(<:$(SRC_DIR)/%.cpp=%.cpp)'
	$(Q)$(CXX_HOST) $(CXXFLAGS) $(CFLAGS) -MM $< | sed 's@^$(@F:%.d=%.o):@$@ $(@:%.d=%.o):@' > $@

$(OBJS_MM:%.o=%.d): %.d: $(SRC_DIR)/%.mm $(FILE_DEP)
	$(E) '$(STAGE) DEP $(<:$(SRC_DIR)/%.mm=%.mm)'
	$(Q)$(CC_HOST) $(CFLAGS) -MM $< | sed 's@^$(@F:%.d=%.o):@$@ $(@:%.d=%.o):@' > $@

$(OBJS_RC:%.o=%.d): %.d: $(SRC_DIR)/%.rc $(FILE_DEP)
	$(E) '$(STAGE) DEP $(<:$(SRC_DIR)/%.rc=%.rc)'
	$(Q)touch $@

else
# The much faster, but can be wrong, dep-check
DEP_MASK :=
DEPS     := Makefile.dep

# Only include the deps if we are not cleaning
ifeq ($(filter $(ENDIAN_TARGETS) depend clean mrproper, $(MAKECMDGOALS)),)
-include Makefile.dep
endif

ifeq ("$(SRC_OBJS_DIR)/$(DEPEND)","$(MAKEDEPEND)")
DEP := $(MAKEDEPEND)
$(SRC_OBJS_DIR)/$(DEPEND): $(SRC_DIR)/depend/depend.cpp
	$(E) '$(STAGE) Compiling and linking $(DEPEND)'
	$(Q)$(CXX_BUILD) $(CXXFLAGS_BUILD) $(CFLAGS_BUILD) $(LDFLAGS_BUILD) -o $@ $<
endif

# Make sure that only 'make depend' ALWAYS triggers a recheck
ifeq ($(filter depend, $(MAKECMDGOALS)),)
Makefile.dep: $(FILE_DEP) $(SRCS:%=$(SRC_DIR)/%) $(CONFIG_CACHE_SOURCE) $(DEP)
else
Makefile.dep: $(FILE_DEP) $(SRCS:%=$(SRC_DIR)/%) $(DEP) FORCE
endif
	$(E) '$(STAGE) DEP CHECK (all files)'
	$(Q)rm -f Makefile.dep.tmp
	$(Q)touch Makefile.dep.tmp

# Calculate the deps via makedepend
	$(Q)$(MAKEDEPEND) -f$(SRC_OBJS_DIR)/Makefile.dep.tmp -o.o -Y -v -- $(CFLAGS_MAKEDEP) -- $(SRCS:%=$(SRC_DIR)/%) 2>/dev/null

# Convert x:/... paths to /x/... for mingw
ifeq ($(OS), MINGW)
	@cat Makefile.dep.tmp | sed 's@/\([a-zA-Z]\):\/@\/\1\/@g' > Makefile.dep.tmp.mingw
	@cp Makefile.dep.tmp.mingw Makefile.dep.tmp
	@rm -f Makefile.dep.tmp.mingw
endif

# Remove all comments and includes that don't start with $(SRC_DIR)
# Remove $(SRC_DIR) from object-file-name
	@$(AWK) '                           \
	/^# DO NOT/ { print $$0 ; next}     \
	/^#/ {next}                         \
	/: / {                               \
		left = NF - 1;                    \
		for (n = 2; n <= NF; n++) {       \
			if (match($$n, "^$(ROOT_DIR)") == 0) { \
				$$n = "";                     \
				left--;                       \
			}                               \
		}                                 \
		gsub("$(SRC_DIR)/", "", $$1);     \
		if (left > 0) {                   \
			print $$0;                      \
			$$1 = "Makefile.dep:";          \
			print $$0;                      \
		}                                 \
		next                              \
	}                                   \
	{                                   \
		print $$0                         \
	}                                   \
	' < Makefile.dep.tmp | sed 's@  *@ @g;s@ $$@@' | $(SORT) > Makefile.dep

	$(Q)rm -f Makefile.dep.tmp Makefile.dep.tmp.bak

endif

# Avoid problems with deps if a .h/.hpp/.hpp.sq file is deleted without the deps
#  being updated. Now the Makefile continues, the deps are recreated
#  and all will be fine.
%.h %.hpp %.hpp.sq:
	@true


# Compile all the files according to the targets

$(OBJS_C): %.o: $(SRC_DIR)/%.c $(DEP_MASK) $(FILE_DEP)
	$(E) '$(STAGE) Compiling $(<:$(SRC_DIR)/%.c=%.c)'
	$(Q)$(CC_HOST) $(CFLAGS) -c -o $@ $<

$(OBJS_CPP): %.o: $(SRC_DIR)/%.cpp $(DEP_MASK) $(FILE_DEP)
	$(E) '$(STAGE) Compiling $(<:$(SRC_DIR)/%.cpp=%.cpp)'
	$(Q)$(CXX_HOST) $(CXXFLAGS) $(CFLAGS) -c -o $@ $<

$(OBJS_MM): %.o: $(SRC_DIR)/%.mm $(DEP_MASK) $(FILE_DEP)
	$(E) '$(STAGE) Compiling $(<:$(SRC_DIR)/%.mm=%.mm)'
	$(Q)$(CC_HOST) $(CFLAGS) -c -o $@ $<

$(OBJS_RC): %.o: $(SRC_DIR)/%.rc $(FILE_DEP)
	$(E) '$(STAGE) Compiling resource $(<:$(SRC_DIR)/%.rc=%.rc)'
	$(Q)$(WINDRES) -o $@ -I `basename $<` $<

$(BIN_DIR)/$(TTD): $(TTD)
	$(Q)cp $< $@

$(TTD): $(OBJS) $(CONFIG_CACHE_LINKER)
	$(E) '$(STAGE) Linking $@'
ifeq ($(OS), PSP)
	# Because of a bug in the PSP GCC tools, linking via CXX results
	#  in total chaos and more problems then you can handle. So we need
	#  CC to link OpenTTD for PSP
	$(Q)$(CC_HOST) $(LDFLAGS) $(OBJS) $(LIBS) -o $@
else
	$(Q)$(CXX_HOST) $(LDFLAGS) $(OBJS) $(LIBS) -o $@
endif
ifdef STRIP
	$(Q)$(STRIP) $@
ifeq ($(OS), DOS)
	$(E) '$(STAGE) Adding CWSDPMI stub to $@'
	$(Q)$(ROOT_DIR)/os/dos/make_dos_binary_selfcontained.sh $(SRC_OBJS_DIR)/$@
endif
endif

# The targets to compile the endian-code

endian_target.h: $(ENDIAN_CHECK) $(CONFIG_CACHE_ENDIAN)
	$(E) '$(STAGE) Testing endianness for target'
	$(Q)./$(ENDIAN_CHECK) $(ENDIAN_FORCE) > $@

$(ENDIAN_CHECK): $(SRC_DIR)/endian_check.cpp
	$(E) '$(STAGE) Compiling and Linking $@'
	$(Q) g++ $(CXXFLAGS_BUILD) $(CFLAGS_BUILD) $< -o $@

# Revision files

$(SRC_DIR)/rev.cpp: $(CONFIG_CACHE_VERSION) $(SRC_DIR)/rev.cpp.in
	$(Q)cat $(SRC_DIR)/rev.cpp.in      | sed "s@\!\!REVISION\!\!@$(REV_NR)@g;s@!!VERSION!!@$(REV)@g;s@!!MODIFIED!!@$(MODIFIED)@g;s@!!DATE!!@`date +%d.%m.%y`@g" > $(SRC_DIR)/rev.cpp

$(SRC_DIR)/os/windows/ottdres.rc: $(CONFIG_CACHE_VERSION) $(SRC_DIR)/os/windows/ottdres.rc.in
	$(Q)cat $(SRC_DIR)/os/windows/ottdres.rc.in | sed "s@\!\!REVISION\!\!@$(REV_NR)@g;s@!!VERSION!!@$(REV)@g;s@!!DATE!!@`date +%d.%m.%y`@g" > $(SRC_DIR)/os/windows/ottdres.rc

FORCE:

depend: $(DEPS)

clean:
	$(E) '$(STAGE) Cleaning up object files'
	$(Q)rm -f $(DEPS) $(OBJS) $(TTD) $(DEPEND) $(TTD:%=$(BIN_DIR)/%) $(CONFIG_CACHE_COMPILER) $(CONFIG_CACHE_LINKER) $(CONFIG_CACHE_ENDIAN) $(CONFIG_CACHE_SOURCE) $(ENDIAN_TARGETS)

mrproper: clean
	$(Q)rm -f $(SRC_DIR)/rev.cpp $(SRC_DIR)/os/windows/ottdres.rc

%.o:
	@echo '$(STAGE) No such source-file: $(@:%.o=%).[c|cpp|mm|rc]'

.PHONY: all mrproper depend clean FORCE
