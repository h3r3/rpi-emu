#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get -yq update
apt-get -yq upgrade
apt-get -yq install qemu unzip
apt-get clean
