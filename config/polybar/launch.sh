#!/usr/bin/env bash

killall -q polybar

cd ~/.config/polybar 

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar main -rq &
polybar info -rq &
polybar bspwm -rq &
#polybar playing -rq &
polybar tray -rq &
#polybar polywins -rq
