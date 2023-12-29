#!/bin/sh

# You can call this script like this:
# $./brightness.sh up
# $./brightness.sh down

get_brightness() {
  xbacklight -get
}

send_notification() {
  brightness=$(get_brightness)
  dunstify -a "changeVolume" -i ${HOME}/Pictures/sysicons/brightness_icon.png -t 8000 -r 2593 -u normal -h int:value:"$brightness" "Brightness:"
}

case $1 in
  up)
    xbacklight -inc 10
    send_notification
    ;;
  down)
    xbacklight -dec 10
    send_notification
    ;;
esac
