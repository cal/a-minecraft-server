#!/bin/bash

for project; do
  if [ -d "$project" ]; then
    cd $project
    echo -en "$project: \t"

    git checkout master
    git pull

    cd ..
  fi
done

