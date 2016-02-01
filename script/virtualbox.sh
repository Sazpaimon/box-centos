#!/bin/bash

# Bail if we are not running inside VirtualBox.
if [[ $PACKER_BUILDER_TYPE =~ virtualbox ]]; then
    mkdir -p /mnt/virtualbox
    mount -o loop /home/vagrant/VBoxGuest*.iso /mnt/virtualbox
    sh /mnt/virtualbox/VBoxLinuxAdditions.run
    umount /mnt/virtualbox
    rm -rf /home/vagrant/VBoxGuest*.iso
fi
