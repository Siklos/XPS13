#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrdb -load ~/.Xresources

xset s off
xset -dpms
xset s noblank

xset r rate 200 20

setxkbmap de
setxkbmap -option ctrl:nocaps

exec i3
