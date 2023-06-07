RZ/G2E EK874 Rev.A

Intro
=====

This default configuration will allow you to start experimenting with the
buildroot environment for the RZ/G2E EK874 Rev.A. With the current configuration
it will bring-up the board, and allow access through the serial console.

How to build it
===============

Configure Buildroot:

    $ make ek874reva_defconfig

Compile everything and build the SD card image:

    $ make

How to write the SD card
========================

Once the build process is finished you will have an image called "sdcard.img"
in the output/images/ directory.

Copy the bootable "sdcard.img" onto an SD card with "dd":

  $ sudo dd if=output/images/sdcard.img of=/dev/sdX bs=20M
