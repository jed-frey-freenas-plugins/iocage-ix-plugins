#!/bin/sh
PLUGIN=${1%/}
JSON=${PLUGIN}/${PLUGIN}.json
iocage fetch --plugin-file --accept --name ${JSON} ip4_addr="none"
