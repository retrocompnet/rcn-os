#!/bin/sh

chroot_exec adduser -D -g "User" -h /data/user user user

# Move user data to datafs
cp -a "$ROOTFS_PATH"/data/user "$DATAFS_PATH"/
rm -rf "$ROOTFS_PATH"/data/user
