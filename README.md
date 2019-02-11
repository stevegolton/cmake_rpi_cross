https://azeria-labs.com/emulate-raspberry-pi-with-qemu/

- Download crosstool
- Make sure libc (ldd --version) and GCC (gcc -version) are the same in crosstool-ng and target.
- Build crosstool
- Either copy rootfs from target to local machine -or- mount root as nfs.
- cmake -DCMAKE_SYSTEM_NAME=../toolchain-rpi.cmake ..
- Debugging from VS code todo and eclipse
