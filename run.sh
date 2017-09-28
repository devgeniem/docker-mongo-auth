#!/bin/bash
set -m

mongodb_cmd="mongod"
cmd="$mongodb_cmd"

if [ "$MONGODB_PORT" ]; then
  cmd="$cmd --port $MONGODB_PORT"
fi

if [ "$AUTH" == "yes" ]; then
    cmd="$cmd --auth"
fi

echo $cmd

$cmd &

if [ ! -f /data/db/.mongodb_password_set ]; then
    /set_mongodb_password.sh
fi

fg
