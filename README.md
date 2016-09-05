# rpi-emu
Vagrantfile and scripts to quickly setup a VM emulating a Raspberry PI.

Runs QEMU inside a Debian VM in VirtualBox.

This isn't anything new, I just collected information over a few different sites on how to make this work, automating and simplifying the VM setup.

## Important notes
* This roughly emulates a generic Raspberry PI (not a specific version) running the latest Raspbian Jessie Lite.
* The emulated Raspberry PI has only 256 KB of RAM (QEMU limitation).
* The emulation is slow, slower than the original Raspberry PI even on a fast PC.
* This setup only allows to ssh in the Raspberry PI console, there's no X11 nor VNC nor any type of graphical support.
* This setup was tested under OSX but should also work on any other plaform supported by Vagrant and VirtualBox.

## What can you use this for
This can be useful to develop or test code, scripts, configurations, targeted for a Raspberry PI.

Not having to use a real Raspberry PI can be handy, and gives you the ability to quickly revert to snapshots, create or destroy multiple VMs.

Can be useful for automatic unit tests or builds (anyway there are much better/faster ways to setup Raspberry PI build machines).

## Getting started
1. Install Vagrant and VirtualBox.
2. Clone or download this repo, open a terminal and cd into it.
3. Run "vagrant up", this should download and setup your VM.
4. Run "vagrant ssh" to ssh into the Debian system.
5. From the Debian system run "sudo /vagrant/run.sh" to start the Raspberry PI emulation.
6. Open another terminal and cd into the repo directory.
7. Run "vagrant ssh" to ssh into the Debian system.
8. Run "/vagrant/ssh.sh" from the Debian system to ssh into the emulated Raspberry PI (note: you may have to wait because startup of the emulated Raspberry Pi can take a while).
9. Use password "raspberry" to login.
