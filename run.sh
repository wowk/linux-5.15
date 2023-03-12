#!/bin/bash

RUN_FILE=arch/arm/boot/zImage
if [ ! -z "$1" ]; then
    RUN_FILE=$1
fi

qemu-system-arm -M vexpress-a9 \
    -dtb arch/arm/boot/dts/vexpress-v2p-ca9.dtb \
    -kernel $RUN_FILE \
    -append "console=ttyAMA0 debug" \
    -nographic \
    -nic tap

