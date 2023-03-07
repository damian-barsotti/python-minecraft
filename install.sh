#!/bin/bash

echoerr() { echo "$@" 1>&2; }

prog_exists() {
    if ! command -v $1 &> /dev/null
    then
        echoerr $1 cannot be found
        exit 1
    fi
}

for prg in docker id wc
do
    prog_exists $prg
done

DIRNAME="${0%/*}"

cat <<EOF > "$DIRNAME"/.env
UID=$(id -u)
GID=$(id -u)
EOF

"$DIRNAME"/docker-compose.sh down

"$DIRNAME"/docker-compose.sh build
