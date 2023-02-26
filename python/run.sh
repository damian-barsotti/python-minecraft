#!/bin/bash

set -x

WD_DEFAULT_DIR=$HOME

WD_DIR="${1:-$WD_DEFAULT_DIR}"

MYUID=$(id -u)
MYGID=$(id -g)

docker run -it --rm --name mc-python \
   -v "$WD_DIR:$WD_DIR" --user $MYUID:$MYGID \
   -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro \
   --workdir "$WD_DIR" \
   damian-barsotti/mc-python:1.0
