#!/bin/sh

echo 'dtoverlay=miniuart-bt' >>"$BOOTFS_PATH"/config.txt
sed -e "s/#ttyS0/ttyAMA0/" -e "s/ttyS0/ttyAMA0/" -i "$ROOTFS_PATH"/etc/inittab
echo ftdi_sio >"$ROOTFS_PATH"/etc/modules-load.d/ftdi.conf

