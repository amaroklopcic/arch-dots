#!/bin/bash

# ~/.local/bin/toggle-theme

current=$(gsettings get org.gnome.desktop.interface color-scheme)

if [[ "$current" == "'prefer-dark'" ]]; then
    $HOME/.local/bin/theme-light
else
    $HOME/.local/bin/theme-dark
fi
