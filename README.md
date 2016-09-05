# rpi-emu
Vagrantfile and scripts to quickly setup a VM emulating a Raspberry PI.

Runs QEMU inside a Debian VM in VirtualBox.

## Important notes
* This roughly emulates a generic Raspberry PI (not a specific version) running the latest Raspbian Jessie Lite.
* The emulated Raspberry PI has only 256 KB of RAM (QEMU limitation).
* The emulation is slow, slower than the original Raspberry PI even on a fast PC.
* This setup only allows to ssh in the Raspberry PI console, there's no X11 nor VNC nor any type of graphical support.
* This setup was tested under OSX but should also work on any other plaform like Windows and Linux.

## Getting started
1. Install Vagrant and VirtualBox.
2. Clone or download this repo, open a terminal and cd into it.
3. Run "vagrant up", this should download and setup your VM.
4. Run "vagrant ssh" to ssh into the Debian system.
5. From the Debian system run "/vagrant/run.sh" to start the Raspberry PI emulation.
6. Open another terminal and cd into the repo directory
7. Run "vagrant ssh: to ssh into the Debian system.
8. Run "/vagrant/ssh.sh" from the Debian system to ssh into the emulated Raspberry PI.
9. Use password "raspberry" to login.
