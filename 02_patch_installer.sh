#!/bin/bash

set -eux

sed -E 's@(MSYS\*\|MINGW\*)@\1|CYGWIN*@' sdkman_installer.sh.ORIG > sdkman_installer.sh
diff -u sdkman_installer.sh.ORIG sdkman_installer.sh || true
