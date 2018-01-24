#!/bin/bash
# Pomodoro clock with zenity notifications
# from https://pastebin.com/tcLkfWL8

program="$0"
minutes="$1"

function display_help ()
{
    echo "USAGE: $program <minutes>"
    exit 1
}

function display_finished ()
{
    zenity --question --title="pomo" \
           --text "Timer finished: $minutes minutes passed." \
           --ok-label="Close" \
           --cancel-label="Restart"
    case "$?" in
        0) exit 0 ;;
        1) "$program" "$minutes" & ;;
    esac
}

if [[ -n "$minutes" ]]
then
    sleep $((minutes * 60)) && display_finished
else
    display_help
fi
