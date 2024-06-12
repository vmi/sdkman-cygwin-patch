sdkman Cygwin patch kit
=======================

This patch kit fixes a fucking problem in sdkman on Cygwin.

https://sdkman.io/install
> We no longer support Cygwin.

Current target version is:

* script: 5.18.2
* native: 0.4.6

Usage
-----

1. Clone this and go to that directory.
2. Execute the following scripts in order.

        ./01_get_installer.sh
        ./02_patch_installer.sh
        ./03_run_installer.sh
        ./04_patch_sdkman.sh

