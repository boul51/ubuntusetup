#!/bin/bash

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

scripts=$(ls "$SCRIPT_DIR"/*_*.sh)

for script in $scripts; do
	echo "Starting script ${script}"
	"$script"
done
