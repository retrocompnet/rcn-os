#!/bin/sh

chroot_exec apk add avahi
chroot_exec rc-update add avahi-daemon default
sed 's/#host-name.*/host-name=rcn/' -i "$ROOTFS_PATH"/etc/avahi/avahi-daemon.conf
