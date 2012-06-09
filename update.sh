#!/bin/bash

# clean up
rm -f server/plugins/*.jar
rm -f server/*.jar

# deploy server
find build/CraftBukkit -name "craftbukkit*.jar" -exec cp "{}" server \;

# deploy plugins
find build -name "*.jar" -not -path "*Bukkit*" -exec cp "{}" server/plugins \;
