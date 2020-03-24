#!/bin/bash

## Install required packages ##

sudo apt install libxcb-composite0-dev libxcb-glx0-dev libxcb-dri2-0-dev libxcb-xf86dri0-dev libxcb-xinerama0-dev libxcb-render-util0-dev cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev

echo "Break Time"
sleep 10

sudo apt install unifont

git clone https://github.com/stark/siji 

cd siji && ./install.sh

cd $HOME

git clone https://github.com/jaagr/polybar.git

cd polybar && ./build.sh

cd $HOME
