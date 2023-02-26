#!/bin/bash

DIRNAME="${0%/*}"

docker build --tag damian-barsotti/spigot-python:1.0 -f "$DIRNAME/"Dockerfile --progress plain "$@" "$DIRNAME" 
