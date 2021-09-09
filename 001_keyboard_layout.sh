#!/bin/bash

set -e

echo "Please enter your keyboard layout (en,fr,it,pl,...)"
read -r layout
gsettings set org.gnome.desktop.input-sources sources "[('xkb','$layout')]"
