#!/bin/bash
VER=$1
cd android_img_repack_tools
sudo ./simg2img ../../builds/$VER/system.img ../../builds/$VER/system.raw.img
cd ../../builds/$VER
mkdir -p /mnt/glass/system
sudo umount /mnt/glass/system
sudo mount -o loop -t ext4 system.raw.img /mnt/glass/system
mkdir -p src/system
sudo cp -Rpv /mnt/glass/system/* .
#CLEANING FOR REPACK
sudo rm system.img system.raw.img
sudo umount /mnt/glass/system
