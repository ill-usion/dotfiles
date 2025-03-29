#!/bin/bash
WAL_WALLPAPER=$(cat ~/.cache/wal/wal)

echo -e "preload = $WAL_WALLPAPER\nwallpaper = ,$WAL_WALLPAPER" > ~/.config/hypr/hyprpaper.conf

pkill hyprpaper && hyprpaper &

