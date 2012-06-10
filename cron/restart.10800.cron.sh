#!/bin/bash

# restart, warnings, saving etc
~/script/server.say.sh 1 minute to server reboot
sleep 30
~/script/server.say.sh 30 seconds to server reboot
sleep 15
~/script/server.save.sh
sleep 10
~/script/server.say.sh 5 seconds to server reboot
sleep 5
~/script/server.restart.sh
