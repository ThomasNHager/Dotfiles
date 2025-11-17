#!/usr/bin/bash

# Put the selection into a variable
selection=$(fzp)

# Determine what to do based on the output type
if [ -d "$selection" ]; then
  cd "$selection" || exit
else
  vim "$selection"
fi
