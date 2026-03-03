#!/bin/sh

chroot_exec rc-update delete dropbear default
chroot_exec apk del dropbear
rm -rf "${DATAFS_PATH}"/etc/dropbear
