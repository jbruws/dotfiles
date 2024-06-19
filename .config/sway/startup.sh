#!/bin/sh

gammastep -P -l 0:0 -o -b 0.7:0.7 -O 5000 &

pipewire &
sleep 0.5
pipewire-pulse &
wireplumber &

sleep 1.25

waybar &
sleep 0.5

nm-applet --indicator &
blueman-applet &
udiskie
