#!/bin/bash

principal='eDP-1'
external='DP-2'
if  xrandr | grep -q "$external d"; then
	xrandr --output "$external" --off
	xrandr --output "$principal" --mode 1920x1080 --scale 1.7x1.7 --fb 3264x1836 --pos 0x0 --panning 3264x1836
else
	xrandr --output "$external" --auto --dpi 160 --scale 1x1
	xrandr --output "$principal" --auto
	xrandr --output "$principal" --scale 2x2
	xrandr --output "$external" --same-as "$principal"
fi
