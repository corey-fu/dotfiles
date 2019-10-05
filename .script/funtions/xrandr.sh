#!/bin/sh

intern=eDP1
extern=DP1
#extern=HDMI2

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
	xrandr --output $intern --off --output $extern --auto --primary
