#!/bin/bash

help() {
	cat <<EOF
Current debug mode: $(if [ -f .debug ]; then echo on; else echo off; fi)
---
Usage: $0 [on|off]

Enable or disable debug mode.
EOF
	exit 1
}

if [ $# = 0 ]; then
	help
fi

case "$1" in
	on)
		touch .debug
		echo "Current debug mode: on"
		;;
	off)
		rm -f .debug
		echo "Current debug mode: off"
		;;
	*)
		help
		;;
esac
