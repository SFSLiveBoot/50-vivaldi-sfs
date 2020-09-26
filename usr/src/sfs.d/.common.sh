#!/bin/sh

: "${lbu:=/opt/LiveBootUtils}"
. "$lbu/scripts/common.func"

: "${pkgs:=vivaldi-stable}"
: "${repo_key:=https://repo.vivaldi.com/archive/linux_signing_key.pub}"
: "${repo:=https://repo.vivaldi.com/archive/deb/}"
: "${repo_branch:=stable main}"
