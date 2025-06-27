#!/bin/sh

set -eu
. "$(dirname "$0")/.common.sh"

curl -fsSL "$key_src" | gpg --dearmor >"$key_file"
echo "$sources_line" >"$sources_list"

apt-get update

"$lbu/scripts/apt-sfs.sh" "$DESTDIR" $pkgs
