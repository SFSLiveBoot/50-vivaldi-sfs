#!/bin/sh

set -e
. "$(dirname "$0")/.common.sh"

curl "$repo_key" | apt-key add -

add-apt-repository "deb $repo $repo_branch"

apt-get update

"$lbu/scripts/apt-sfs.sh" "$DESTDIR" $pkgs
