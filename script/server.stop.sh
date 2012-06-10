#!/bin/bash

# real stop
~/script/screen.send.sh stop
sleep 10

# force remove lockfile in case of crash
if [ -f /server/server.log.lck ]; then
  rm ~/server/server.log.lck
fi
