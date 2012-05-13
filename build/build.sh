#!/bin/bash

for project; do
  if [ -d "$project" ]; then
    cd $project
    echo -en "$project: \t"

    mvn clean install

    cd ..
  fi
done

