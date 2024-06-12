#!/bin/bash

set -eu

if [ -f .debug ]; then
	echo "*** DEBUG MODE ***"
	echo
	set -x
	rm -rf .sdkman
	export SDKMAN_DIR="$PWD/.sdkman"
	./sdkman_installer.sh
	( cd "$SDKMAN_DIR"
	  cat <<EOF > .gitignore
*~
.*~
\#*
.\#*
/.*
/*
!/bin
!/src
EOF
	  git init
	  git add -A
	  git commit -m 'original.'
	  git tag original
	)
else
	set -x
	./sdkman_installer.sh
fi
