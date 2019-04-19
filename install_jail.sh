#!/bin/sh

PLUGIN=${1%/}

# Interface
IFACE=lagg0
# JSON
JSON=${PLUGIN}/${PLUGIN}.json
# IP4_addr
IP4_ADDR="192.168.1.99/24"

iocage fetch --plugin-file --noverify --accept --name ${JSON} ip4_addr="${IP4_ADDR}"
