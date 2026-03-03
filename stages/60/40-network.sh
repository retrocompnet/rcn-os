#!/bin/sh

cat >>"$ROOTFS_PATH"/etc/network/interfaces.alpine-builder <<EOF

auto wg0
iface wg0 inet static
EOF

cp "$ROOTFS_PATH"/etc/network/interfaces.alpine-builder "$DATAFS_PATH"/etc/network/interfaces
