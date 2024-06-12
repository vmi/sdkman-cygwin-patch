#!/bin/bash

if [ -f .debug ]; then
	echo "*** DEBUG MODE ***"
	echo
	export SDKMAN_DIR="$PWD/.sdkman"
	. .sdkman/bin/sdkman-init.sh
	export DEBUG=true
else
	. ~/.sdkman/bin/sdkman-init.sh
	export DEBUG=false
fi

set -x
patch="$PWD/sdkman.diff"
cd "$SDKMAN_DIR"
if "$DEBUG"; then
	if [ "$1" = "gen" ]; then
		git diff original > "$patch"
	else
		git checkout .
		patch -p1 --no-backup-if-mismatch < "$patch"
	fi
else
	patch -p1 --no-backup-if-mismatch < "$patch"
fi
