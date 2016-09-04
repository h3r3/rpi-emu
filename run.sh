#!/bin/bash

qemu-system-arm -kernel kernel-qemu -cpu arm1176 -m 256 -M versatilepb -nographic -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" -hda disk.img
