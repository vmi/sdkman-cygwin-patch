#!/bin/bash

help() {
  cat <<EOF
Usage: $0 [0 | SDKMAN_COMMAND ...]

0 - run installer
others - run sdk command
EOF
  exit 1
}

if [ $# = 0 ]; then
  help
fi

cd "$(dirname "$0")"
mkdir -p tmp logs

export SDKMAN_DIR="$PWD/.sdkman"

if [ "$1" = "0" ]; then
  rm -rf .sdkman
  script -c 'set -x; . ./sdkman.sh' logs/00installer.log
  exit
fi

script -c ". .sdkman/bin/sdkman-init.sh; set -x; sdk $*" logs/"$1.log"
