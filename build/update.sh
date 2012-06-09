#!/bin/bash

# Pull changes
ls -1 | while read project; do
  if [ -d "$project" ]; then
    cd $project

    git checkout master
    git pull

    cd ..
  fi
done

# Compile
ls -1 | while read project; do
  if [ -d "$project" ]; then
    cd $project

    mvn clean install

    cd ..
  fi
done

