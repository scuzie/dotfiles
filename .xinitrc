#!/bin/sh

numlockx &
setxkbmap -layout de -synch
exec i3
