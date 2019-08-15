#!/bin/sh

PLUGIN=${1%/}
PLUGIN=${PLUGIN%.json}

# JSON
JSON=${PLUGIN}/${PLUGIN}.json
# IP4_addr

# Hack, because reasons.
python3.6 /root/iocage/iocage fetch --plugin-name ${JSON} --noverify --accept ip4_addr="none"
