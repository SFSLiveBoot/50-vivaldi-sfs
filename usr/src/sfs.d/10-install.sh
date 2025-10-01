#!/bin/sh

set -eu

: "${lbu:=/opt/LiveBootUtils}"

"$lbu/scripts/apt-sfs.sh" "$DESTDIR" $(grep -v "^#" "$(dirname "$0")/.pkgs")
