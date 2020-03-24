#!/bin/bash

## Install required packages ##

sudo apt install \
	cargo \
	libdbus-1-dev 

echo "Break Time"
sleep 10

git clone https://github.com/greshake/i3status-rust
cd i3status-rust && cargo build --release
