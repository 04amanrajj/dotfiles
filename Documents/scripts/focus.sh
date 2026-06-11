#!/usr/bin/env bash

current=$(gsettings get org.gnome.desktop.wm.preferences focus-mode)

if [ "$current" = "'sloppy'" ]; then
    gsettings set org.gnome.desktop.wm.preferences focus-mode 'click'
    notify-send "Focus Mode" "Switched to Click-to-Focus"
else
    gsettings set org.gnome.desktop.wm.preferences focus-mode 'sloppy'
    notify-send "Focus Mode" "Switched to Focus-Follows-Mouse"
fi
