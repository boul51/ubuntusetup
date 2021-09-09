#!/bin/bash

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

sudo cp "${SCRIPT_DIR}/vmware_shared_folders/mnt-hgfs.mount" /etc/systemd/system/mnt-hgfs.mount
sudo cp "${SCRIPT_DIR}/vmware_shared_folders/open-vm-tools.conf" /etc/modules-load.d/open-vm-tools.conf

sudo systemctl enable mnt-hgfs.mount
sudo systemctl start mnt-hgfs.mount
