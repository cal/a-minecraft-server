#!/bin/bash
command=$@
screen -S minecraft -p 0 -X stuff "`printf "${command}\r"`"

