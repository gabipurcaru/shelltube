ShellTube
=========

I got tired of my YouTube tab to burn through my laptop battery, so here you go: YouTube in your console, with a <50 line script!

Usage:

    $ ./play.sh armin  # starts playing Armin van Buuren

To Do
-----

- controls (e.g. space for pause, n for next, etc.)
- unlimited playing (right now it only plays the first 30 results and stops)

Installation
------------

Dependencies:
- curl
- youtube-dl
- ffplay
- jq

You can install the dependencies like this:

Ubuntu:

    $ sudo apt-get -y install curl youtube-dl ffmpeg jq

Arch:

    $ sudo pacman -S curl youtube-dl ffmpeg jq

OSX (not tested):

    $ brew install curl youtube-dl ffmpeg jq
    
Then you can download `play.sh` like this:

    $ curl https://raw.githubusercontent.com/gabipurcaru/shelltube/master/play.sh > play.sh && chmod +x play.sh
