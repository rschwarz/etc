#!/bin/sh

# machine specific settings
[ -f ~/.xprofile ] && . ~/.xprofile

# disable touchpad while typing
syndaemon -t -k -i 2 -d &

# set proper keyboard layout
setxkbmap us_alive

# start openbox
exec openbox-session
