#!/bin/bash

set -e

ubuntu_version=$(lsb_release -a 2>/dev/null | grep "^Release:" | awk '{print $2}' | cut -d '.' -f1)

if [ "$ubuntu_version" == "16" ]; then
	dconf write /com/canonical/unity/launcher/favorites "['application://org.gnome.Terminal.desktop', 'application://firefox.desktop']"
else
	dconf write /org/gnome/shell/favorite-apps "['org.gnome.Terminal.desktop', 'firefox.desktop']"
fi
