#!/usr/bin/env bash
FOUND_INSTANCE=$(docker ps -a | grep gogs.ho)
if [ -z "$FOUND_INSTANCE" ]; then
    echo "No instance of gogs.ho found. Exiting..."
    exit 1
fi

docker stop gogs.ho && docker rm gogs.ho
