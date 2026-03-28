#!/bin/bash

source ~/.virtualenvs/Polybar/bin/activate
killall polybar
# bash /home/thager/.config/polybar/full.sh 2>&1 | tee -a /tmp/full.log & disown
polybar --reload horizontal 2>&1 | tee -a /tmp/polybar.log & disown
polybar --reload vertical 2>&1 | tee -a /tmp/polybar.log & disown
