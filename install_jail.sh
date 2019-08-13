#!/bin/sh

PLUGIN=${1%/}

# JSON
JSON=${PLUGIN}/${PLUGIN}.json
# IP4_addr
iocage fetch --plugin-name ${JSON} --noverify --accept ip4_addr="none"
