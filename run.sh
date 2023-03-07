#!/bin/bash

echoerr() { echo "$@" 1>&2; }

DIRNAME="${0%/*}"

NCONTAINERS=$("$DIRNAME"/docker-compose.sh ps -q | wc -l)

if [ $NCONTAINERS == 2 ]
then
./docker-compose.sh exec -it mc-python "$@"
else
    echoerr Run "$DIRNAME"/start.sh before.
    exit 1
fi
