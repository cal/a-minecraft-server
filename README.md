# a-minecraft-server

## Installation

Create a user "minecraft" and check out repository in its home directory.

Copy init/minecraft.conf into /etc/init/
    sudo cp ~/init/minecraft.conf /etc/init/

Set up a cron job for the minecraft user
    # m h  dom mon dow   command
      * *    *  *  *     /home/minecraft/cron/cron.sh

