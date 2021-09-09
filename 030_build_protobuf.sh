#!/bin/bash

set -e

SRC_DIR="${HOME}/src"
CLONE_DIR="${SRC_DIR}/protobuf"
VERSION="v3.4.0"

mkdir -p "$SRC_DIR"

if [ -e "$CLONE_DIR" ]; then
	echo "Directory ${CLONE_DIR} already exists. Skip build or delete it ? ([s]/d)"
	read -r answer
	case "$answer" in
		s)
			exit 0
			;;
		d)
			echo "Deleting ${CLONE_DIR} on user request"
			rm -rf "$CLONE_DIR"
			;;
		*)
			echo "Invalid answer $answer, aborting"
			exit 1
			::
	esac
fi

pushd "$SRC_DIR"

git clone https://github.com/protocolbuffers/protobuf.git
cd "$CLONE_DIR"
git checkout "$VERSION"

echo "Building protobuf, this will take a while"

./autogen.sh > /dev/null
./configure > /dev/null
make -j$(nproc) > /dev/null > /dev/null
sudo make install -j $(nproc) > /dev/null
sudo ldconfig > /dev/null

echo "Done"

popd
