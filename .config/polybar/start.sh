#!/bin/bash

source ~/.virtualenvs/Polybar/bin/activate
feh --bg-scale ~/Desktop/Backgrounds/jellyfish.jpg
killall polybar
polybar 2>&1 | tee -a /tmp/polybar.log & disown
