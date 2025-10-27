#!/bin/bash

if pgrep -x hyprsunset > /dev/null ; then
    echo -n '{"text":"󰖔 ","tooltip":"Hyprsunset enabled"}'
else
    echo -n '{"text":" ","tooltip":"Hyprsunset disabled"}'
fi

#(pkill hyprsunset || hyprsunset > /dev/null &) && /home/mohamed/.config/waybar/scripts/hyprsunset.sh
