#!/bin/bash

set -e

echo "Please enter your git name"
read -r name

echo "Please enter your git email address"
read -r email

git config --global user.name "$name"
git config --global user.email "$email"

git config --global alias.co checkout
