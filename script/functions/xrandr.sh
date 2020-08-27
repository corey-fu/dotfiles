#!/bin/bash

intern=eDP1
extern1=DP1
extern2=HDMI2
wallpaper=aerial-view-of-seashore-near-large-grey-rocks-853199.jpg


## to list all monitors , just type: ##

	#xrandr

## set only one primary monitor ##

	#xrandr --output $intern --output $extern --off

## set two monitors but the primary is intern & the second is extern(right) ##

	#xrandr --output $intern --primary --auto --output $extern --auto --right-of eDP1

## set two monitors but the primary is intern & the second is extern(left) ##

	#xrandr --output $intern --primary --auto --output $extern --auto --left-of eDP1

## set two monitors but the only output is extern ##

	#xrandr --output $intern --off --primary --output $extern --auto  
	#xrandr --output $intern --off --output $extern --auto --primary


xrandr --output $intern --mode "2560x1440" \
       	--output $extern1 --mode "3840x2160" --primary --right-of $intern \
       	--output $extern2 --mode "1920x1200" --scale 1.5x1.5 --rotate left --right-of $intern

feh --bg-center ~/wallpapers/$wallpaper 
