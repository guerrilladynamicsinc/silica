#!/bin/bash
VER=$1
WORKDIR="../builds/$VER"

rm -rf $WORKDIR/tmp
rm $WORKDIR/boot$VER.img
