#!/bin/bash

killall vlc
cvlc ~/Music/minecraft.m3u -Z -R &
sleep 1
playerctl pause
