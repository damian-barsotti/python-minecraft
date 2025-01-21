#!/bin/bash

DIRNAME="${0%/*}"

docker build --tag damian-barsotti/mc-python:2.0 -f "$DIRNAME/"Dockerfile --progress plain "$@" "$DIRNAME"
