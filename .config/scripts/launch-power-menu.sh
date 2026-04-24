#!/bin/bash

options=" Shutdown\n Reboot\n Logout"
# Enable dim around
hyprctl keyword layerrule "match:namespace wofi, dim_around on"
# Show menu
selected=$(echo -e $options | wofi --dmenu -jb --sort-order=alphabetical --width 250 --height 160)
# Disable dim around
hyprctl keyword layerrule "match:namespace wofi, dim_around off"

case $selected in
    " Shutdown") notify-send "Shutting down..." && sleep 2 && shutdown now ;;
    " Reboot") notify-send "Rebooting..." && sleep 2 && reboot ;;
    " Logout") notify-send "Logging out..." && sleep 2 && hyprctl dispatch exit ;;
esac
