#!/bin/bash

sudo qemu-system-arm \
        -kernel kernel-qemu \
        -cpu arm1176 \
        -m 256 \
        -M versatilepb \
        -serial stdio \
        -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" \
        -hda disk.img \
        -nographic \
        -redir tcp:2222::22
