#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o pipefail
# set -o xtrace

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

file_exists() {
    [[ -f $1 ]];
}

apt update

apt upgrade -y

apt install -y kpartx qemu-user-static zerofree wget rsync curl unzip git build-essential dkms linux-headers-$(uname -r)

sed -i "/^root/a ${USER}  ALL=(ALL:ALL) ALL" /etc/sudoers