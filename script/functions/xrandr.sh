#!/bin/bash

intern=eDP1
extern1=DP1
extern2=HDMI2
wallpaper=aerial-view-of-seashore-near-large-grey-rocks-853199.jpg

opt=$1
#intern=$2
#extern1=$3
#extern2=$4
direction=$2

case $opt in
    triple-rotate)
        xrandr --output $intern --primary --mode "2560x1440" --pos "6720x720" \
            --output $extern1 --mode "3840x2160" --pos "2880x0" \
            --output $extern2 --mode "1920x1200" --pos "0x360" --scale 1.5x1.5 --rotate $direction
        sudo mount -a
                    ;;
    triple)
        xrandr --output $intern --primary --mode "2560x1440" --pos "6720x720" \
            --output $extern1 --mode "3840x2160" --pos "2880x0" \
            --output $extern2 --mode "1920x1200" --pos "0x360" --scale 1.5x1.5
        sudo mount -a
                    ;;
    dual)
        xrandr --output $intern --mode "2560x1440" --primary \
       	    --output $extern1 --mode "3840x2160" --$direction-of $intern \
            --output $extern2 --off
                    ;;
    single)
        xrandr --output $intern --mode "2560x1440" --primary \
            --output $extern1 --off \
            --output $extern2 --off
        sudo fusermount -zu /home/coreyfu/Music
        sudo fusermount -zu /opt/game
                    ;;
esac

mons=`xrandr -q | grep ' connected' | awk '{print $1}'`
mons_num=`xrandr -q | grep ' connected' | wc -l`

echo "$mons_num avaliable monitor(s): \n$mons "

feh --bg-center ~/wallpapers/$wallpaper 
