#!/bin/bash

qemu-system-arm -curses \
	-kernel kernel-qemu \
	-cpu arm1176 \
	-m 256 \
	-M versatilepb \
	-serial stdio \
	-append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" \
	-drive "file=disk.img,index=0,media=disk,format=raw"
