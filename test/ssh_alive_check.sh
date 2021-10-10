#!/usr/bin/env bash

SERVER=$1
PORT=$2

SSH=`ssh -o PasswordAuthentication=no pi@$SERVER -p $PORT 2>&1 | grep "Permission denied"`
if [ "$?" -ne 0 ]; then
  echo "SSH connection on $SERVER on port $PORT failed"
  exit 1
else
  echo "SSH connection to $SERVER on port $PORT succeeded"
  exit 0
fi