#!/usr/bin/env bash

yum groupinstall -y "Development Tools"
yum install -y kernel-devel-$(uname -r)

VB_ISO=/root/VBoxGuestAdditions.iso

mount -o loop $VB_ISO /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt

rm $VB_ISO

yum clean all