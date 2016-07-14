#!/bin/sh
COMMAND="ssh -oStrictHostKeyChecking=no -R server.panum.dk:{{@PORT}}:localhost:22 server.panum.dk"
pgrep -f -x "$COMMAND" > /dev/null 2>&1 || $COMMAND
