#!/usr/bin/env bash
set -o errexit
set -o nounset
set -o pipefail
# set -o xtrace

ssh-keygen -t rsa

cat ~/.ssh/id_rsa.pub