#!/bin/bash

profile=$(asusctl profile -p)

case "$profile" in
    "Active profile is Quiet")
        echo "  "
        ;;
    "Active profile is Balanced")
        echo "  "
        ;;
    "Active profile is Performance")
        echo "  "
        ;;
esac
