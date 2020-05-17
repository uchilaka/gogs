#!/usr/bin/env bash
SCRIPT_PATH=$(realpath $(dirname ${BASH_SOURCE[0]}))
FOUND_INSTANCE=$(docker ps -a | grep gogs.ho)

if [ ! -z "${FOUND_INSTANCE}" ]; then
    echo "Will start container instance: ${FOUND_INSTANCE}"
    docker start gogs.ho
else
    echo "You need to run $SCRIPT_PATH/init.sh for your first run of gogs"
    exit 1    
fi
