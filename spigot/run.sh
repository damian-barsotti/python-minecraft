#!/bin/bash

MC_DEFAULT_DIR=~/mc-svr

MC_DIR="${1:-$MC_DEFAULT_DIR}"

if [ -a "$MC_DIR" ]
then
   echo "$MC_DIR" exists. Delete first
   exit 1
fi

mkdir -p "$MC_DIR"

docker run -d -p 25565:25565 -p 4711:4711 -e EULA=true -e SPIGOT_VER=1.16.3 --name spigot-python -v "$MC_DIR:/minecraft" damian-barsotti/spigot-python:1.0
