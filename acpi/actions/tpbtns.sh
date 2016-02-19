#!/bin/sh

set -e
set -u

# Alsa control for volume/mute
ACTL=Master

export DISPLAY=:0

if [ "$2" = 'VOLUP' ]; then
	amixer set "$ACTL" 5%+ > /dev/null
elif [ "$2" = 'VOLDN' ]; then
	amixer set "$ACTL" 5%- > /dev/null
elif [ "$2" = 'MUTE' ]; then
	amixer set "$ACTL" toggle > /dev/null
elif [ "$2" = 'F20' ]; then
	printf "%s\n" 'F20'
elif [ "$2" = 'PROG1' ]; then
	printf "%s\n" 'PROG1'
elif [ "$2" = 'SCRNLCK' ]; then
	printf "%s\n" 'SCRNLCK'
elif [ "$2" = 'SBTN' ]; then
	printf "%s\n" 'SBTN'
elif [ "$2" = 'WLAN' ]; then
	printf "%s\n" 'WLAN'
elif [ "$2" = 'BRTDN' ]; then
	xbacklight -dec 10 -time 0
elif [ "$2" = 'BRTUP' ]; then
	xbacklight -inc 10 -time 0
elif [ "$2" = 'VMOD' ]; then
	printf "%s\n" 'VMOD'
fi

