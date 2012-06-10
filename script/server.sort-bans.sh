#!/bin/bash

# sort the banlist, it gets randomized on load
sleep 10
sort ~/server/banned-players.txt -o ~/server/banned-players.txt
