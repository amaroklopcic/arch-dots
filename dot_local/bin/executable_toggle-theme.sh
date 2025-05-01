#!/bin/bash

# ~/.local/bin/toggle-theme

current=$(gsettings get org.gnome.desktop.interface color-scheme)

if [[ "$current" == "'prefer-dark'" ]]; then
    $HOME/.local/bin/enable-theme-light.sh
else
    $HOME/.local/bin/enable-theme-dark.sh
fi
