#!/bin/bash

res=3840x2160
scl=2x2
#res=2560x1440

xrandr --dpi 276 --fb $res \
 --output eDP1 --off \
 --output HDMI2 --scale $scl --panning $res
