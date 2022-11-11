#!/bin/bash

# Control volume with pulseaudio and display it on notify-send

# Detect which device is running
index=$(pacmd list-sinks | grep -A 15 '* index' | awk '/index/ { print $3 }')
#if [[ $(pactl list short sinks | grep "Thunderbolt") ]]; then
#    index=1
#else
#    index=0
#fi

getVolume() {
    pacmd list-sinks | grep -A 15 '* index' | awk '/volume: front/{ print $5 }'
}
ifMuted() {
    bool=$(pacmd list-sinks | grep -A 15 '* index' | awk '$1 ~ /muted/ {print $2}')
    if [ $bool == "yes" ]; then
        notify-send -t 1000 "🔇: $(getVolume)"
    else
        notify-send -t 1000 "🔉: $(getVolume)"
    fi
}
toggleVolume() {
    pactl set-sink-mute $index toggle && ifMuted
}
incVolume() {
    pactl set-sink-volume $index +5% && notify-send -t 1000 "🔉: $(getVolume)"
}
decVolume() {
    pactl set-sink-volume $index -5% && notify-send -t 1000 "🔉: $(getVolume)"
}

opt=$1
case $opt in
    toggle )
        $(toggleVolume) ;;
    inc )
        $(incVolume) ;;
    dec )
        $(decVolume) ;;
esac

