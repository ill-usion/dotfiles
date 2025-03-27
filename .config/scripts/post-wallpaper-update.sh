#!/bin/bash
WALLPAPER="$1"

# Check if the file exists
if [[ -f "$WALLPAPER" ]]; then
    # Generate a pywal color scheme
    wal -i "$WALLPAPER"

    # Apply the new colors to kitty
    kitty @ set-colors --all ~/.cache/wal/colors-kitty.conf

    # Generate a Vencord theme
    walcord -o ~/.config/Vencord/themes/walcord.theme.css
else
    echo "Wallpaper file not found: $WALLPAPER"
    exit 1
fi

