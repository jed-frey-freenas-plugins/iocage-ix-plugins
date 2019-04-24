#!/bin/sh

# Mount a path in a given jail with the same path in the jail.
# /mnt/tank (Host) -> /mnt/tank (Jail)

# Mount a host path in an iocage jail with nullfs.
# mirror_mount.sh IOCAGE_JAIL PATH

iocage fstab --add "$1" "$2" "$2" nullfs defaults 0 0
