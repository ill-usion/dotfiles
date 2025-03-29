#!/bin/bash

WALLPAPER="$1"

if [[ -f "$WALLPAPER" ]]; then
    wal -i "$WALLPAPER"

    kitty @ set-colors --all ~/.cache/wal/colors-kitty.conf

    # Generate a Vencord theme
    walcord -o ~/.config/Vencord/themes/walcord.theme.css
else
    echo "Wallpaper file not found: $WALLPAPER"
    exit 1
fi

