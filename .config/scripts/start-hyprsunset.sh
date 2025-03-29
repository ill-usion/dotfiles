#!/bin/bash

STATE_FILE="$HOME/.hyprsunset_state"

if [[ -f "$STATE_FILE" ]]; then
    STATE=$(cat "$STATE_FILE")
    
    if [[ "$STATE" -eq 1 ]]; then
        hyprsunset -t 3500 &
    fi
fi

