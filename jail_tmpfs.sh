#!/bin/sh

JAIL=${JAIL:-${1}}

iocage fstab "${JAIL}" "tmpfs /tmp tmpfs rw,mode=777 0 0"
