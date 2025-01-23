#!/bin/bash

DIRNAME="${0%/*}"

RUN="$DIRNAME/run.sh"

"$RUN" codium --list-extensions | grep -q ms-python.python \
|| "$RUN" codium --no-sandbox --install-extension ms-python.python


"$RUN" codium --no-sandbox "$@"
