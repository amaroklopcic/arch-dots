#!/bin/bash

# ~/.local/bin/toggle-theme

current=$(gsettings get org.gnome.desktop.interface color-scheme)

if [[ "$current" == "'prefer-dark'" ]]; then
    $HOME/.local/bin/enable-theme-light.sh
else
    $HOME/.local/bin/enable-theme-dark.sh
fi

# Have waybar reload our dark/light theme module to reflect new
# dark mode state
pkill -SIGRTMIN+10 waybar

