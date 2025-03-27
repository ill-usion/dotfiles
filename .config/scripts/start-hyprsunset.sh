#!/bin/bash

STATE_FILE="$HOME/.hyprsunset_state"

# Check if the state file exists and read the state
if [[ -f "$STATE_FILE" ]]; then
    STATE=$(cat "$STATE_FILE")
    
    # If the last state was 1, restart hyprsynset
    if [[ "$STATE" -eq 1 ]]; then
        hyprsunset -t 3500 &
    fi
fi

