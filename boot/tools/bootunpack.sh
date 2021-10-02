#!/bin/bash
VER=$1
WORKDIR="../builds/$VER"
mkdir -p ../builds/$VER/tmp/unpack/ramdisk
cp $WORKDIR/boot.img $WORKDIR/tmp/boot.img
./unpackbootimg -i $WORKDIR/tmp/boot.img -o $WORKDIR/tmp/unpack
cd $WORKDIR/tmp/unpack/ramdisk
gunzip -dc ../boot.img-ramdisk.gz | cpio -i
