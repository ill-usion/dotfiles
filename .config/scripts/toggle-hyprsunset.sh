#!/bin/bash

STATE_FILE="$HOME/.hyprsunset_state"

# Initialize state file if it doesn't exist
if [[ ! -f "$STATE_FILE" ]]; then
    echo 0 > "$STATE_FILE"
fi

# Read current state
STATE=$(cat "$STATE_FILE")

# Toggle state
if [[ "$STATE" -eq 0 ]]; then
    hyprsunset -t 3500 &
    echo 1 > "$STATE_FILE"
else
    killall hyprsunset
    echo 0 > "$STATE_FILE"
fi

