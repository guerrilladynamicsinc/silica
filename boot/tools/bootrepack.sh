#!/bin/bash
VER=$1
WORKDIR="../builds/$VER"

rm $WORKDIR/tmp/unpack/boot.img-ramdisk.gz
./mkbootfs $WORKDIR/tmp/unpack/ramdisk | gzip -1 > $WORKDIR/tmp/unpack/boot.img-ramdisk.gz
./mkbootimg --kernel $WORKDIR/tmp/unpack/boot.img-zImage --ramdisk $WORKDIR/tmp/unpack/boot.img-ramdisk.gz --base 0x80000000 --cmdline 'console=ttyO2,115200n8 vmalloc=500M androidboot.console=ttyO2 androidboot.carrier=wifi-only product_type=w cpuidle_sysfs_switch' -o $WORKDIR/tmp/new_boot.img
mv $WORKDIR/tmp/new_boot.img $WORKDIR/boot$VER.img
