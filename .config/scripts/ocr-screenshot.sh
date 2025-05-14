#!/bin/bash

SCREENSHOT_DIR="$HOME/Pictures"
mkdir -p "$SCREENSHOT_DIR"
FILENAME="ocr_$(date +%Y%m%d_%H%M%S).png"
FILEPATH="$SCREENSHOT_DIR/$FILENAME"

hyprshot -s -m region -f "$FILENAME"

TEXT=$(tesseract "$FILEPATH" stdout -l eng+ara 2>/dev/null | sed '/^[[:space:]]*$/d')
echo "$TEXT" | wl-copy

if [ -z "$TEXT" ]; then
    notify-send "OCR Failed" "No text detected."
else
    notify-send "OCR Success" "Text copied to clipboard!"
fi
