#!/bin/bash

# ~/.local/bin/fix-theme.sh

# This is meant to be run on login to reset the theme state.

hour=$(date +%H)

if [ "$hour" -ge 7 ] && [ "$hour" -lt 19 ]; then
    # 07:00 - 18:59 -> Light mode
    $HOME/.local/bin/enable-theme-light.sh
else
    # 19:00 - 06:59 -> Dark mode
    $HOME/.local/bin/enable-theme-dark.sh
fi
