#!/bin/bash

# clean up
rm -f target/server/plugins/*.jar
rm -f target/server/*.jar

# deploy server
find build/CraftBukkit -name "craftbukkit*.jar" -exec cp "{}" target/server \;

# deploy plugins
find build -name "*.jar" -not -path "*Bukkit*" -exec cp "{}" target/server/plugins \;
