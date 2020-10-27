#!/bin/bash
path=/home/coreyfu/Pictures
TMP_VIDEO=$(mktemp /tmp/outXXXXXXXXXX.mp4)
ffcast -vv -s ffmpeg -r 25 $TMP_VIDEO
    #&& convert -set delay 10 -layers Optimize $TMP_AVI $path/out.gif
