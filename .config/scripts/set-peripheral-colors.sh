#!/bin/bash

COLORS_FILE="$HOME/.cache/wal/colors"

if [ -f "$COLORS_FILE" ]; then
    color=$(sed -n '1p' $COLORS_FILE)
    color="${color:1}"
    openrgb -d 0 -m static -c $color > /dev/null
else
    notify-send "Failed to set peripheral colors" "Wal colors missing"
fi
