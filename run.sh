#!/bin/bash

qemu-system-arm -M vexpress-a9 \
    -dtb arch/arm/boot/dts/vexpress-v2p-ca9.dtb \
    -kernel arch/arm/boot/zImage \
    -append "console=ttyAMA0 debug" \
    -nographic

