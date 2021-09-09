#!/bin/bash

set -e

ubuntu_version=$(lsb_release -a 2>/dev/null | grep "^Release:" | awk '{print $2}' | cut -d '.' -f1)

if [ "$ubuntu_version" == "16" ]; then
        echo "Ubuntu 16 detected, adding ubuntu-toolchain ppa"
        sudo add-apt-repository ppa:ubuntu-toolchain-r/test
        sudo apt-get update
fi

sudo apt-get install -y gcc-8 g++-8

sudo rm -f /usr/bin/gcc /usr/bin/g++
sudo ln -s /usr/bin/gcc-8 /usr/bin/gcc
sudo ln -s /usr/bin/g++-8 /usr/bin/g++
