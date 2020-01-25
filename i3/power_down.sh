#!/bin/sh

choices="shutdown\nreboot\nsuspend\nlog_off"

chosen=$(echo "$choices" | dmenu -i)

case "$chosen" in
    shutdown)   sudo shutdown now ;;
    reboot)     sudo reboot ;;
    suspend)    sudo sysctemctl suspend ;;
    log_off)    pkill -u lautaro ;;
    *)          ;;
esac
