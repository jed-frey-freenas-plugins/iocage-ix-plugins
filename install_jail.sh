#!/bin/sh

IFACE=lagg0

iocage fetch --plugin-file --noverify --accept --name $1 ip4_addr="192.168.1.$2/24"
