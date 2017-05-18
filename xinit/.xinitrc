#!/bin/sh

# machine specific settings
[ -f ~/.xprofile ] && . ~/.xprofile

# disable touchpad while typing
syndaemon -t -k -i 2 -d &

# enable tapping
synclient TapButton1=1
synclient TapButton2=2
synclient TapButton3=3

# set proper keyboard layout
USALIVE=${HOME}/src/us_alive
setxkbmap -I${USALIVE} us_alive -print | xkbcomp -I${USALIVE} - $DISPLAY

# enable compositing window manager (for peek)
xcompmgr &

# set background color to brighter gray
hsetroot -solid "#808080"

# start openbox
exec openbox-session
