#!/bin/sh

# Because tab completion
PLUGIN=${1%/} 
PLUGIN=${PLUGIN%.json}

# JSON file.
JSON=${PLUGIN}/${PLUGIN}.json

# Hack, because reasons.
IOCAGE="python3.6 /root/iocage/iocage"

if [ "x${2}" = x"" ]
then
	${IOCAGE} fetch --plugin-name ${JSON} ip4_addr="none"
else
	${IOCAGE} fetch --plugin-name ${JSON} --name ${2} ip4_addr="none"
fi
