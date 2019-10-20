#!/bin/sh

# Mount a host path in an iocage jail with nullfs.
# ./02_mount.sh IOCAGE_JAIL PATH

IOCAGE="python3.6 /root/iocage/iocage"


${IOCAGE} exec $1 mkdir -p $2
${IOCAGE} fstab --add $1 $2 $2 nullfs defaults 0 0
