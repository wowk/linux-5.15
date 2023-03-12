#!/bin/bash

ARCH=arm
CROSS_COMPILE=arm-linux-gnueabi-

[ -f .config ] || make ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE vexpress_defconfig
make ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE -j10
make ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE -j10 zImage
make ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE -j10 compile_commands.json

