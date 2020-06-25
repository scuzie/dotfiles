#!/usr/bin/env bash

case "$1" in
    lock )
	    i3lock -n -u --image="${PICTURES}/samurai.png"
	    ;;
    reboot )
	    systemctl reboot
	    ;;
    shutdown )
	    systemctl poweroff
	    ;;
esac
