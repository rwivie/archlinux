#!/bin/sh

sleep 5 && kanshi &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
sleep 20 && dbus-update-activation-environment --all &
gnome-keyring-daemon --start --components=secrets &
mpdris2-rs &
sleep 60 && dunst -config /home/ron/.config/dunst/dunstrc_sway &
swayidle_start.sh &
mpd &
nm-applet &
blueman-applet &
#waybar --config=/home/ron/.config/waybar_dwl/config --style=/home/ron/.config/waybar_dwl/style.css &

#==== for dwlb
dwlb -ipc &
sleep 0.1 &
~/.config/dwlb/scripts/nushell_status -p | dwlb -status-stdin all &
