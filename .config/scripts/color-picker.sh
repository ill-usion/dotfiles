COLOR="$(hyprpicker)"

COLOR="$(echo "$COLOR" | grep -oE '#[0-9A-Fa-f]{6}')"

if [ -z "$COLOR" ]; then
    exit 1
fi

notify-send "Color Picker" "$COLOR"
wl-copy "$COLOR"

