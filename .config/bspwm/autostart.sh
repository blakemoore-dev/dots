#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#exec sh .fehbg &
hsetroot -solid "#090a0f"
xsetroot -cursor_name left_ptr &
exec bash ~/.config/polybar/launch.sh &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

dunst -conf ~/.config/dunst/dunstrc &
#run nm-applet &
#run xfce4-power-manager &
blueberry-tray &
picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#/usr/lib/xfce4/notifyd/xfce4-notifyd &
run volumeicon &
run unclutter --timeout 1 --jitter 50 -b &
