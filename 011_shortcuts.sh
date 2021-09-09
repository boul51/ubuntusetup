#!/bin/bash

set -e

# Window manager shortcuts
dconf write /org/gnome/desktop/wm/keybindings/maximize "''"
dconf write /org/gnome/desktop/wm/keybindings/toggle-maximize "'<Super>Up'"

# Gnome terminal shortcuts
dconf write /org/gnome/terminal/legacy/keybindings/prev-tab "'<Alt>Left'"
dconf write /org/gnome/terminal/legacy/keybindings/next-tab "'<Alt>Right'"
