#!/bin/bash

# let's get things started
~/script/screen.send.sh cd ~/server
~/script/screen.send.sh ./run.sh
~/script/server.sort-bans.sh
