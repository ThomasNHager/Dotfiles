#!/bin/sh
rclone mount yaleOnedrive: /home/thager/OneDrive --daemon --drive-chunk-size 128M --max-backlog 999999
betterdiscordctl -i flatpak install
bash /home/thager/.config/conky/Kurhah_1/start.sh
bash /home/thager/.config/polybar/start.sh &
xset -dpms 
spicetify update
