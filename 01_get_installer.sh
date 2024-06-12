#!/bin/bash

set -eux

curl -o sdkman_installer.sh https://get.sdkman.io
cp -v sdkman_installer.sh sdkman_installer.sh.ORIG
