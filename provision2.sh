#!/bin/bash

rm -rf raspbian
mkdir raspbian
if ls /vagrant/cache/raspbian/*.zip 1>/dev/null 2>&1; then
	echo "using cached raspbian"
	cp /vagrant/cache/raspbian/*.zip ./raspbian/
else
	echo "cached raspbian not found, downloading latest raspbian"
	wget -P ./raspbian/ -nv --content-disposition https://downloads.raspberrypi.org/raspbian_lite_latest
	if [ -f "/vagrant/Vagrantfile" ]; then
		echo "caching raspbian on host filesystem"
		mkdir /vagrant/cache/raspbian/
		cp raspbian/*.zip /vagrant/cache/raspbian/
	fi
fi
unzip raspbian/*.zip -d raspbian
rm raspbian/*.zip
mv raspbian/*.img disk.img
rm -rf raspbian
wget -nv https://github.com/dhruvvyas90/qemu-rpi-kernel/raw/master/kernel-qemu-4.4.12-jessie
mv kernel-qemu* kernel-qemu

