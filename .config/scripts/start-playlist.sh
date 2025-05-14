#!/bin/bash

killall vlc
cvlc ~/Music/minecraft.m3u -Z &
sleep 1
playerctl pause
