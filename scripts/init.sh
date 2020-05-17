#!/usr/bin/env bash
SRC_PATH=$(realpath "$(dirname ${BASH_SOURCE[0]})/../")

cat <<EOF
Source path: ${SRC_PATH}
EOF

docker run --name=gogs.ho --restart=unless-stopped -p 4022:22 -p 4082:3000 -v $SRC_PATH/app:/data gogs/gogs
