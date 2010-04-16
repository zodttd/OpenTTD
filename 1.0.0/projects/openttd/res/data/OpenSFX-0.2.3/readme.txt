OpenSFX README
Last updated:    2010-03-31
Release version: OpenSFX 0.2.3
------------------------------------------------------------------------

Table of Contents:
------------------
1.0) About OpenSFX
 * 1.1) License
2.0) Installing OpenSFX
 * 2.1) Installing OpenSFX manually
 * 2.2) Installing OpenSFX using the Online Content service
3.0) Obtaining the source
 * 3.1) Compiling the source
 * 3.2) Contributing
4.0) Credits


1.0) About OpenSFX
==== =============
OpenSFX is a set of base sounds for OpenTTD and is the result of the
"Sound Effects Replacement" project.

OpenSFX is an open source replacement for the original Transport Tycoon
Deluxe base sounds used by OpenTTD. The main goal of OpenSFX therefore
is to provide a set of free sounds which make it possible to play
OpenTTD without requiring the (copyrighted) files from the Transport
Tycoon Deluxe cd. This potentially increases the OpenTTD fanbase and
makes it a true free game (with "free" as in both "free beer" and "open
source").

1.1) License
==== =======
OpenSFX is licensed under the Creative Commons Sampling Plus 1.0 License.
You can find the full text in license.txt.

This license has been chosen as the majority all of the original samples
are licensed under the Creative Commons Sampling Plus 1.0 License with
the exception of a single original sample under public domain. If you
are interested in this package having a more free license, i.e. a
license that is deemed free by Debian, Fedora and the other Linux
distributions, you have to either contact the original authors and ask
them to relicense them or redo the samples so they can licensed under a
license that is deemed free.

2.0) Installing
==== ==========
OpenSFX is available from at least three locations. This readme will
only cover the official download locations. We cannot support third
party download locations and we cannot refund your money if you have
paid money for OpenSFX.

There are three ways to get the latest stable release:
  * If you are new to OpenTTD, you do not have access to the original
    Tranport Tycoon Deluxe files and you are using the Windows installer
    to install OpenTTD you can select OpenSFX to be downloaded during
    the installation of OpenTTD.

  * If you are new to OpenTTD and do not have access to the original
    Tranport Tycoon Deluxe files, you will have to download and install
    OpenSFX manually. This is really not that difficult as it may
    sound, so do not worry too much about that.
      o Download location:
          http://mz.openttdcoop.org/bundles/opensfx/releases/
      o Installation instructions:
          Installing OpenSFX Manually.

  * If you already have OpenTTD up and running using the original
    Tranport Tycoon Deluxe files, the ingame Online Content service is
    the easy way to obtain OpenSFX.
      o Download location:
          use the ingame Online content service
      o Installation instructions:
          Installing OpenSFX using the Online Content service.

  * Just like OpenTTD, there are nightly builds of OpenSFX available
    as well. Every evening around 18:18 CE(S)T a new build of OpenSFX
    is created automatically (if there is something new that is).
    Unlike stable releases these builds are not tested to see if they
    work, but if a nightly does not work, it does not break anything
    either. Keep a stable or working nightly sitting in the /data dir
    and just delete a broken nightly to get OpenSFX working again.
      o Download location:
          http://mz.openttdcoop.org/bundles/opensfx/nightlies/
      o Installation instructions:
          Installing OpenSFX Manually.

2.1) Installing OpenSFX Manually
==== ===========================
1. First, make sure that you have downloaded and installed at least
   OpenTTD version 1.0.0 or a recent nightly.
2. Next, download the latest OpenSFX package. (stable nightly)
3. Unpack the zip into the OpenTTD's /data directory. There is no
   need to unpack the tar file, so just leave it as it is. Your
   OpenTTD /data directory is either located in:
      * An OpenTTD folder in your user account's home directory:
          o Windows: C:\Documents and Settings\<username>\My Documents\OpenTTD
          o Mac OSX: ~/Documents/OpenTTD
          o Linux: ~/.openttd
      * The OpenTTD installation directory.
4. Run OpenTTD.
5. In the main menu of the game, click the Game Options button.
   The Game Options dialog will appear.
6. Select OpenSFX from the drop-down list below Base sound set if
   that's not selected already (bottom left of window). Close the
   window using the × in the upper left corner.
      * If you did not install the original Tranport Tycoon Deluxe base
        sounds during the installation of OpenTTD, you can skip this step.
      * If you installed the original Tranport Tycoon Deluxe base sounds
        as well, this is where you can switch base sound sets.

2.2) Installing or Updating OpenSFX using the Online Content service
==== ===============================================================
This method uses the Online content service (BaNaNaS) to download OpenSFX.
In order to use this, you need a working OpenTTD and again at least
OpenTTD version 0\1.0.0 or a recent nightly.

1. Start OpenTTD and on the main menu click the Check online content
   button. A new window will pop up.
      * If OpenTTD does not start, follow the manual installation procedure.
2. Find the OpenSFX entry from the list at the left. You can use the
   search box in the upper right corner of the window.
3. Click the little square in front of the OpenSFX entry in order to
   mark it for download.
4. Click the Download button in the bottom right corner. After
   download, close the open windows.
5. In the main menu of the game, click the Game Options button. The Game
   Options dialog will appear.
6. Select OpenSFX from the drop-down list below Base sound set if
   that is not selected already (bottom left of window). Close the
   window using the × in the upper left corner.
      * This is where you can switch base sound sets.


3.0) Obtaining the source
==== ====================
The OpenSFX source is available in a Mercurial repository. You can
download the source in bz2, zip or gz format from:
> http://mz.openttdcoop.org/hg/opensfx
You can use Mercurial to do an anonymous checkout from the same address:
> hg clone http://mz.openttdcoop.org/hg/opensfx
For releases you can download the (released) tarballs from:
> http://bundles.openttdcoop.org/opensfx/releases/

3.1) Compiling the source
==== ====================
For compiling the source you need:
 * catcodec (http://www.openttd.org/download-catcodec)
 * (GNU) make
 * md5sum
 * cut
 * a sh compatible shell
 * hg (Mercurial) if you want it to be properly versioned
If you want to package you also need tar, zip and possibly bzip2.

3.2) Contributing
==== ============
Contributing to OpenSFX can be done in several ways, but they generally end
up with providing (improved) samples for the set. If you have got a better
sample than we currently have you can make that know via an issue at:
> http://dev.openttdcoop.org/projects/opensfx/issues/new
Please mention who made the original samples and that the sample has been
released under the Creative Commons Sampling Plus 1.0 License or a license
that allows us to release it under that license.


4.0) Credits
==== =======
The original sources of our mixed samples are:
 - "1sticky8" from "freesound.org"
    * Dumpster_Diving.wav
 - "acclivity" from "freesound.org"
    * ChugChugWooHoo.mp3
    * TwoCows.wav
 - "AGFX" from "freesound.org"
    * Squeeky ball Toy_1.L.wav
 - "Aldor" from "pdsounds.org"
    * L'ascenseur - Elevator
 - "alexrigg" from "freesound.org"
    * crash_treefall_SE.mp3
 - "Anton" from "freesound.org"
    * wind1.wav
 - "Benboncan" from "freesound.org"
    * Circular saw crosscutting.wav
 - "benhillyard" from "freesound.org"
    * Vocal_Splat_08.wav
 - "Bidone" from "freesound.org"
    * Affen schreit.mp3
 - "cats2009" from "freesound.org"
    * blue_angels.wav
 - "cfork" from "freesound.org"
    * boing_raw.aif
 - "conny" from "freesound.org"
    * DATSUN_T.wav
 - David R Barnes ("earthcalling"
    * Corner of a sheep field in summer
 - "ddub" from "freesound.org"
    * concorde.mp3
 - Derek Murphy ("robbiesurp" at "freesound.org")
    * wfl5.5_snap.wav
 - "www.digifishmusic.com" ("digifishmusic" at "freesound.org")
    * Passenger jet departs 2.wav
 - "dobroide" from "freesound.org"
    * 20060419.horse.neigh.wav
 - Elaine Miller ("Miselaineous" at "freesound.org")
    * elaine-growl.wav
 - "Goldy-sama" from "freesound.org"
    * bulle.wav
 - "Halleck" from "freesound.org"
    * JacobsLadderLong2.flac
 - "han1" from "freesound.org"
    * Car start and drive.mp3
    * claxon.wav
 - "HerbertBoland" from "freesound.org"
    * MouthPop.wav
 - huha from "tt-forums.net"
    * maglev_sound_2.wav
 - "icmusic" from "freesound.org"
    * london bus approaches & leaves.wav
 - Janis Lukss ("Pendrokar" at "wiki.openttd.org")
    * Own recordings/mixes
 - "jascha" from "freesound.org"
    * kick_1.wav
 - "JFBSAUVE" from "freesound.org"
    * CHAINSAW.wav
 - Jillian Callahan ("JillianCallahan" at "freesound.org")
    * generic prop_start(8.395).wav
 - "joedeshon" from "freesound.org"
    * slide_whistle_down_fast_01.wav
 - "krillion" from "freesound.org"
    * flyby.mp3
 - "l0calh05t" from "freesound.org"
    * in the smithy 2.wav
 - "Leady" from "freesound.org"
    * Dropping a large gun.wav
 - Leon Milo ("milo" at "freesound.org")
    * msfinmarken_Bergen.aif
    * ship2_bergen.aif
 - lonemonk from "freesound.org"
    * Approx 850 - Enthusiast Audience.wav
 - "lorenzosu" from "freesound.org"
    * helicopterRaw_16sec.wav
 - "man" from "freesound.org"
    * swosh.aif
 - "Marec" from "freesound.org"
    * metro.wav
 - "Matias.Reccius" from "freesound.org"
    * crashB.wav
 - "Necrosensual" from "freesound.org"
    * aluminum02.wav
 - "NoiseCollector" from "freesound.org"
    * CRASH2.wav
 - "patchen" from "freesound.org"
    * Locomotive 1 Distant horn.wav
 - "Pooleside" from "freesound.org"
    * nnb04_maxed.wav
 - Remko Bijker ("Rubidium" at "dev.openttdcoop.org")
    * Own work
 - Richard Frohlich ("FreqMan" at "freesound.org")
    * whoosh06.wav
 - Robert Gacek ("Robinhood76" at "freesound.org")
    * 01063 roadworks driller.wav
 - "roscoetoon" from "freesound.org"
    * rr_cross5.wav
    * t_start1.mp3
 - "Q.K." from "freesound.org"
    * Metal_03.wav
 - "sagetyrtle" from "freesound.org"
    * crash.wav
 - "saphix" from "freesound.org"
    * file0375.mp3
 - "scuola_rocca_di_botte" from "freesound.org"
    * Manuel Tarquini.wav
 - "Sedi" from "freesound.org"
    * ae_51_m.wav
 - "simon.rue" from "freesound.org"
    * Boink_v3.wav
 - "SlykMrByches" from "freesound.org"
    * splattt.mp3
 - "Stickinthemud" from "freesound.org"
    * Bike Horn double toot.wav
 - "suonho" from "freesound.org"
    * ELEMENTS_WATER_02_Phasin-bubbles.wav
 - "tigersound" from "freesound.org"
    * bird tweet.aif
    * bird tweet 4.aif
 - Timo A. Hummel ("Felicitus" at "dev.openttdcoop.org")
    * Own work
 - Tom Haigh ("audible-edge" at "freesound.org")
    * Nissan Maxima burnout (04-25-2009).wav
 - "VEXST" from "freesound.org"
    * Snare 4.wav

Editing/(re)mixing was done by:
 - Janis Lukss ("Pendrokar" at "wiki.openttd.org")
 - "janusz" from "dev.openttdcoop.org"
 - "Jklamo" from "wiki.opentd.org"
 - Remko Bijker ("Rubidium" at "dev.openttdcoop.org")
 - Richard Wheeler ("Zephyris" at "dev.openttdcoop.org")

A detailed list of who has worked on what sample is available in the
file opensfx.sfo in the source repository.

Thanks go out to the guys at #openttdcoop for providing the source
repository and bug tracking services.
