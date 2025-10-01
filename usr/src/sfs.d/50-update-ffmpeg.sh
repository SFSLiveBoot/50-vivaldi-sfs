#!/bin/sh

set -eu

mkdir -p "$DESTDIR/var/opt/vivaldi"
mkdir -p /var/opt
ln -s "$DESTDIR/var/opt/vivaldi" /var/opt

"$DESTDIR/opt/vivaldi/update-ffmpeg"
