#!/bin/sh

if lsof /dev/video0 >/dev/null 2>&1; then
    camera=""
fi

if pacmd list-sources 2>&1 | grep -q RUNNING; then
    mic=""
fi

echo "$camera $mic"
