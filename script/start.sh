#!/bin/bash

# screen setup
screen=`screen -ls | grep "\.minecraft"`
if [ -z "$screen" ]; then
  echo "Starting screen..."
  ~/script/screen.start.sh
else
  echo "Screen is running"
fi

# start minecraft server
if [ -e ~/server/server.log.lck ]; then
  echo "Minecraft server is running"
else
  echo "Starting minecraft server..."
  ~/script/server.start.sh
fi
