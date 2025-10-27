#!/bin/bash

(pkill hyprsunset || hyprsunset > /dev/null &) && /home/mohamed/.config/waybar/scripts/hyprsunset.sh
