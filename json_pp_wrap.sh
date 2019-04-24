#!/bin/sh
# find . -name *.json -depth 2 | xargs -n1 ./json_pp_wrap.sh

JSON=`realpath $1`
BAK=${JSON}.bak

echo ${JSON}
echo ${BAK}

cp ${JSON} ${BAK}
json_pp < ${BAK} > ${JSON}
