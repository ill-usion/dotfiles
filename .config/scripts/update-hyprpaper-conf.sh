#!/bin/bash
WAL_WALLPAPER=$(cat ~/.cache/wal/wal)

# Write to hyprpaper config
echo -e "preload = $WAL_WALLPAPER\nwallpaper = ,$WAL_WALLPAPER" > ~/.config/hypr/hyprpaper.conf

# Restart Hyprpaper
 pkill hyprpaper && hyprpaper &

