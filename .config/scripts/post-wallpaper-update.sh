#/bin/bash

WALLPAPER="$1"

if [[ -f "$WALLPAPER" ]]; then
    wal --saturate 0.15 --contrast 5 -i "$WALLPAPER" 

    kitty @ set-colors --all ~/.cache/wal/colors-kitty.conf

    walcord -o ~/.config/Vencord/themes/walcord.theme.css
else
    echo "Wallpaper file not found: $WALLPAPER"
    exit 1
fi

