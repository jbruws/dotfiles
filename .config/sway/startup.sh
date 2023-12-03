#!/bin/sh

gammastep -P -l 0:0 -o -b 0.9:0.9 -O 4500 &

pipewire &
sleep 0.5
pipewire-pulse &
wireplumber &

sleep 0.5

waybar &
sleep 0.5

nm-applet --indicator &
blueman-applet &
udiskie
