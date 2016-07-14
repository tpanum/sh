#!/bin/sh
COMMAND="ssh -oStrictHostKeyChecking=no -N -f -R server.panum.dk:{{@PORT}}:localhost:22 root@server.panum.dk"
pgrep -f -x "$COMMAND" > /dev/null 2>&1 || $COMMAND
