#!/bin/bash

source ~/.virtualenvs/Polybar/bin/activate
feh --bg-scale ~/Desktop/Backgrounds/jellyfish.jpg
killall polybar

if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload &
    done
else
    polybar --reload &
fi
