#!/usr/bin/env bash

dir="~/.config/rofi"
rofi_command="rofi -theme $dir/powermenu.rasi"

# Options
shutdown=" Shutdown"
reboot="ﰇ Restart"
lock=" Lock"
suspend="鈴 Sleep"
logout=" Logout"

# Variable passed to rofi
options="$suspend\n$logout\n$lock\n$reboot\n$shutdown"

chosen="$(echo -e "$options" | $rofi_command -p "Power Options" -dmenu -selected-row 0)"
case $chosen in
    $shutdown)
			systemctl poweroff
			;;
    $reboot)
			systemctl reboot
			;;
    $suspend)
			sudo pm-suspend
			;;
    $lock)
    		betterlockscreen -l dimblur
			;;
    $logout)
		  	bspc quit
      			;;
esac
