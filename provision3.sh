#!/bin/bash

mkdir tmp1
mount -o loop,offset=4194304 disk.img tmp1
cp tmp1/kernel7.img ./
cp tmp1/*.dtb ./
umount tmp1
rm -r tmp1

mkdir tmp2
mount -t auto -o loop,offset=70254592 disk.img tmp2
echo "#/usr/lib/arm-linux-gnueabihf/libarmmem.so" >tmp2/etc/ld.so.preload
sync
umount tmp2
rm -r tmp2
