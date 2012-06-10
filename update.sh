#!/bin/bash

# clean up
rm -f server/plugins/*.jar
rm -f server/*.jar

# deploy server
find build/CraftBukkit -name "craftbukkit*.jar" -exec cp "{}" server/ \;

# deploy plugins
find build/*/target -name "*.jar" \
  -not -path "*Bukkit*" \
  -not -path "*DynmapCoreAPI*" \
  -not -path "*dynmap-api*" \
  -exec cp "{}" server/plugins/ \;
