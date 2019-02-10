# Define our host system
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

# Define the cross compiler locations
#set(tools /home/steve/Resources/raspberrypi-tools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf)
set(tools /home/steve/x-tools/armv6-rpi-linux-gnueabi)
set(cross armv6-rpi-linux-gnueabi-)
set(CMAKE_C_COMPILER ${tools}/bin/${cross}gcc)
set(CMAKE_CXX_COMPILER ${tools}/bin/${cross}g++)

# Define the sysroot path for the RaspberryPi distribution
set(rpi_root "/mnt/nfs")
set(CMAKE_FIND_ROOT_PATH ${rpi_root})
set(BOOST_LIBRARYDIR "${rpi_root}/usr/lib/arm-linux-gnueabihf")

# Don't set this
#set(CMAKE_SYSROOT /mnt/nfs)

# Not sure if we really need to set this...
set(CMAKE_STAGING_PREFIX /home/steve/Development/pibuild)

# Use our definitions for compiler tools
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# Search for libraries and headers in the target directories only
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
