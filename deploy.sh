#!/bin/bash

# clean up
rm -f target/server/plugins/*.jar
rm -f target/server/*.jar

# deploy server
find build/CraftBukkit -name "craftbukkit*.jar" -exec cp "{}" target/server \;
