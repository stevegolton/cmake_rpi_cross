# Cross compiltation guide for Raspberry Pi 1 & 3.

## To build simple binaries with (very) few dependencies.
- Download [crosstool-ng](https://crosstool-ng.github.io/download/) and follow their [docs](https://crosstool-ng.github.io/docs/) on getting crosstool-ng set up and configured but don't build it just yet.
- SSH to the target RPi and check the version of libc `ldd --version` and GCC `gcc --version`. Write these down.
- In crosstool-ng configure the sample for the RPi you are using.
- Run `ct-ng menuconfig` and chose the version of libc and gcc corresponding to the versions on the target. If you can't get the version of gcc exactly then choose the nearest one with the same major version number.
- Build crosstool - use `ct-ng build.4` to build with 4 cores.

## Building with more complicated dependencies
- Install the required package on your target RPi using apt-get.
- Either copy the rootfs from target to local machine or mount root as nfs.

## Building the example boost application
- `cmake -DCMAKE_TOOLCHAIN_FILE=../toolchain-rpi.cmake ..`

## TODO: Debugging from VS code todo and eclipse
## TODO: Emulating the RPi
https://azeria-labs.com/emulate-raspberry-pi-with-qemu/
