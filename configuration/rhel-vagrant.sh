#!/usr/bin/env bash

adduser -G wheel vagrant
echo "vagrant ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/01_vagrant

echo "root:vagrant" | chpasswd
echo "vagrant:vagrant" | chpasswd

mkdir -p /home/vagrant/.ssh
curl https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub > /home/vagrant/.ssh/authorized_keys 

chown -R vagrant:vagrant /home/vagrant/.ssh
chmod 0700 /home/vagrant/.ssh
chmod 0600 /home/vagrant/.ssh/authorized_keys