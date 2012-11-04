# machine specific settings
[-f ~/.xprofile] && . ~/.xprofile

# disable touchpad while typing
syndaemon -t -k -i 2 -d &

# start tiling window manager
pytyle3 &

# start openbox
exec openbox-session
