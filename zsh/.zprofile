# auto-start X on first login shell
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
