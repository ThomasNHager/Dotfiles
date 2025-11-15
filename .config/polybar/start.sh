#!/bin/bash

source ~/.virtualenvs/Polybar/bin/activate
feh --bg-fill ~/Desktop/Backgrounds/jellyfish.jpg
killall polybar
# bash /home/thager/.config/polybar/full.sh 2>&1 | tee -a /tmp/full.log & disown
polybar --reload horizontal 2>&1 | tee -a /tmp/polybar.log & disown
