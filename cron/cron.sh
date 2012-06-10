#!/bin/bash

cd ~/cron

for filename in `ls -1 | grep -E '([a-z0-9]+).([0-9]+).cron.sh'`; do
  IFS='.' read -ra parts <<< "$filename"
  period=${parts[1]}
  name=${parts[0]}
  lastfile=".last.${name}"

  # set up the lastfile if it doesn't exist
  if [ ! -w "$lastfile" ]; then
    echo `date +%s` > $lastfile
    continue
  fi

  last=`cat $lastfile`
  time=`date +%s`
  diff=`echo "${time} - ${last}" | bc`
  if [ $diff -gt $period ]; then
#   echo "executing: $name"
    echo `date +%s` > $lastfile
    `./$filename`
  fi

done
