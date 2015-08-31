#!/usr/bin/env bash

yum install -y bzip2 kernel-uek-devel-$(uname -r)
VB_ISO=/root/VBoxGuestAdditions.iso

mount -o loop $VB_ISO /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt

rm $VB_ISO

yum clean all