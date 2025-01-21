#!/bin/bash

DIRNAME="${0%/*}"

"$DIRNAME"/run.sh codium --no-sandbox "$@"
