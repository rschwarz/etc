#!/bin/zsh
# Pomodoro clock with zenity notifications
# from https://pastebin.com/tcLkfWL8

program="$0"
minutes="$1"

function display_help ()
{
    echo "USAGE: $program <minutes>"
    exit 1
}

function display_start ()
{
    WINDOWID=
    zenity --question \
	   --title="pomo.sh" \
           --text "Start timer for $minutes minutes?" \
           --ok-label="OK" \
           --cancel-label="No"
}

function display_finished ()
{
    WINDOWID=
    zenity --question \
	   --title="pomo.sh" \
           --text "Timer finished: $minutes minutes passed." \
           --ok-label="Close" \
           --cancel-label="Restart"
    case "$?" in
        0) exit 0 ;;
        1) "$program" "$minutes" & ;;
    esac
}

display_start && sleep $((minutes * 60)) && display_finished
