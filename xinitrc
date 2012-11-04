#!/bin/sh

# machine specific settings
[ -f ~/.xprofile ] && . ~/.xprofile

# disable touchpad while typing
syndaemon -t -k -i 2 -d &

# start openbox
exec openbox-session
