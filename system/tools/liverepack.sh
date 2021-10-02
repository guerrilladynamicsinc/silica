#!/bin/bash
VER=xe22
PKG=$1
TS=`date +%s`
#cleans old build if it was flashed
#rm ../../../silica-rel/system.tar.gz
#copies lenscraft build script
cp ../builds/packages/lenscraft.sh ../builds/$VER/ 2>> /dev/null
echo "Building LIVE $PKG on $VER"
sleep 2
cd ../builds/$VER/
./lenscraft.sh $1
sleep 2
#echo "CREATING SYSTEM-$1-$VER"
#cd ../../tools/
#./make_ext4fs -s -l 1024M -a system ../builds/system$VER-$TS.img ../builds/$VER/
#mv ../builds/system*.img   ../../../silica-rel/system.img
#cd ../../../silica-rel
#echo "PACKING SYSTEM.IMG TO SYSTEM.TAR.GZ"
#tar cfvz system.tar.gz system.img
#rm system.img
