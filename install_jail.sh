#!/bin/sh

# Interface
IFACE=lagg0
# JSON
JSON=$1/$1.json
# IP4_addr
IP4_ADDR="192.168.1.99/24"

iocage fetch --plugin-file --noverify --accept --name ${JSON} ip4_addr="${IP4_ADDR}"
