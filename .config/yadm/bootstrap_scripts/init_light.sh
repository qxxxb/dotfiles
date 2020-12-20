#!/usr/bin/env sh

# In order to change the display brightness without sudo, I created a new group
# `light` that has permission to change hardware display settings. Then I added
# my user to the group.

if [ $(getent group light) ]; then
    echo "Group \`light\` already exists."
else
    dir=/sys/class/backlight/intel_backlight
    sudo groupadd -r light
    sudo chown :light $dir/brightness
    sudo chmod g+w $dir/brightness
    sudo usermod -a -G light fluffy
fi
