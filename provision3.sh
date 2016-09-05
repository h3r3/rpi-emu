#!/bin/bash

imgStart=$(fdisk -lu disk.img | grep "Linux" | awk '{print $2}')
secSize=$(fdisk -lu disk.img | grep "Units:" | awk '{print $8}')
offset=$((imgStart * secSize))
echo "Disk image offset is" $imgStart "*" $secSize "=" $offset

echo "Modifying disk image to run in Qemu"
mkdir tmp2
mount -t auto -o loop,offset=$offset disk.img tmp2
echo "#/usr/lib/arm-linux-gnueabihf/libarmmem.so" >tmp2/etc/ld.so.preload
echo 'KERNEL=="sda", SYMLINK+="mmcblk0"' >tmp2/etc/udev/rules.d/90-qemu.rules
echo 'KERNEL=="sda?", SYMLINK+="mmcblk0p%n"' >>tmp2/etc/udev/rules.d/90-qemu.rules
echo 'KERNEL=="sda2", SYMLINK+="root"' >>tmp2/etc/udev/rules.d/90-qemu.rules
sed -e '/mmcblk/ s/^#*/#/' -i tmp2/etc/fstab
sync
umount tmp2
rm -r tmp2
