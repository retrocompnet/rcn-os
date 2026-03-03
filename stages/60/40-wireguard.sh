#!/bin/sh

chroot_exec apk add wireguard-tools
echo wireguard >>"$ROOTFS_PATH"/etc/modules

cat >>"$ROOTFS_PATH"/etc/network/interfaces.alpine-builder <<EOF
auto wg0
iface wg0 inet static
      pre-up ip link add wg0 type wireguard
EOF
cp "$ROOTFS_PATH"/etc/network/interfaces.alpine-builder "$DATAFS_PATH"/etc/network/interfaces
