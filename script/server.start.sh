#!/bin/bash

# let's get things started
~/script/screen.send.sh cd ~/server
~/script/screen.send.sh ./run.sh

# sort the banlist, it gets randomized on load
sleep 10
sort ~/server/banned-players.txt -o ~/server/banned-players.txt
