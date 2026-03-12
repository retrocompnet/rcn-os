#!/bin/sh

chroot_exec adduser -D -g "User" -h /data/user user user
chroot_exec addgroup user wheel
echo -ne 'user\nuser\n' |chroot_exec passwd user

chroot_exec apk add sudo

# Move user data to datafs
cp -a "$ROOTFS_PATH"/data/user "$DATAFS_PATH"/
rm -rf "$ROOTFS_PATH"/data/user
