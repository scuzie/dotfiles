#!/bin/sh

numlockx &
setxkbmap -layout de -synch
eval $(ssh-agent)
ssh-add
exec i3
