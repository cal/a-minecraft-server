#!/bin/bash

# stop minecraft server
if [ -e ~/server/server.log.lck ]; then
  echo "Minecraft server is running, stopping..."
  ~/script/server.stop.sh
else
  echo "Minecraft server is not running"
fi

# screen removal
screen=`screen -ls | grep 'minecraft'`
if [ -z "$screen" ]; then
  echo "Screen is not running"
else
  echo "Screen is running, stopping..."
  ~/script/screen.stop.sh
fi
