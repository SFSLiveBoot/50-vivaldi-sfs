#!/bin/sh

: "${lbu:=/opt/LiveBootUtils}"
. "$lbu/scripts/common.func"

: "${pkgs:=vivaldi-stable}"
: "${repo_key:=https://repo.vivaldi.com/archive/linux_signing_key.pub}"
: "${repo:=https://repo.vivaldi.com/archive/deb/}"
: "${repo_branch:=stable main}"
: "${pkgs_gz_url:=$repo/dists/stable/main/binary-amd64/Packages.gz}"

installed_ver() {
  "$DESTDIR/opt/vivaldi/vivaldi" --version | cut -f2 -d" "
}

latest_ver() {
  : "${pkgs_gz:=$(dl_file "$pkgs_gz_url")}"
  zgrep -e "^Package: vivaldi-stable" -e Version "$pkgs_gz" | grep -A1 ^Package: | grep ^Version: | cut -f2 -d" " | cut -f1 -d-
}
