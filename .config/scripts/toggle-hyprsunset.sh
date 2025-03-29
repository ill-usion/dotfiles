#!/bin/bash

STATE_FILE="$HOME/.hyprsunset_state"

if [[ ! -f "$STATE_FILE" ]]; then
    echo 0 > "$STATE_FILE"
fi

STATE=$(cat "$STATE_FILE")

if [[ "$STATE" -eq 0 ]]; then
    hyprsunset -t 3500 &
    echo 1 > "$STATE_FILE"
else
    killall hyprsunset
    echo 0 > "$STATE_FILE"
fi

