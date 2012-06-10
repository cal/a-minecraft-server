#!/bin/bash

# real stop
~/script/screen.send.sh stop
sleep 10

# force remove lockfile in case of crash
rm ~/server/server.log.lck
