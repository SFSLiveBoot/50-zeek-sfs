#!/bin/sh

: "${lbu:=/opt/LiveBootUtils}"

: "${pkgs:=$(grep -v -e '^#' -e '^$' "$(dirname "$0")/.pkgs" | tr \\n " ")}"

: "${sources_list:=/etc/apt/sources.list.d/zeek.list}"
: "${sources_line:=deb http://download.opensuse.org/repositories/security:/zeek/Debian_12/ /}"

: "${key_file:=/etc/apt/trusted.gpg.d/security_zeek.gpg}"
: "${key_src:=https://download.opensuse.org/repositories/security:zeek/Debian_12/Release.key}"
