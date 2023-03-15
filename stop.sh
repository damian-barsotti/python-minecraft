#!/bin/bash

DIRNAME="${0%/*}"

"$DIRNAME"/run-spigot.sh mc_stop

"$DIRNAME"/docker-compose.sh stop "$@"
