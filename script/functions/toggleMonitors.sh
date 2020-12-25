#!/bin/bash

#1. Toogle monitors

intern=eDP1
extern=DP1

if xrandr | grep "$extern disconnected"; then
    xrandr --output "$extern" --off --output "$intern" --auto
else
    xrandr --output "$intern" --off --output "$extern" --auto
fi