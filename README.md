# a-minecraft-server

## Installation

Create a user named "minecraft" and check out repository in its home directory.

    sudo useradd -d /home/minecraft -m minecraft
    sudo su minecraft
    cd ~
    git init
    git remote add origin https://github.com/cal/a-minecraft-server.git
    git pull origin master

Build stuff

    cd ~/build
    ./update.sh

Deploy stuff you built

    cd ~
    ./update.sh

Copy init/minecraft.conf into /etc/init/

    sudo cp /home/minecraft/init/minecraft.conf /etc/init/

Start minecraft

    sudo start minecraft

Set up a cron job for the minecraft user

    # m h  dom mon dow   command
      * *    *  *  *     /home/minecraft/cron/cron.sh

