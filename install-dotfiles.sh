#!/bin/bash

# Copy bashrc
mv ~/.bashrc ~/.bashrc.backup
cp config/bash/.bashrc ~/

# Copy configs
cp -r config ~/.config
rm -rf ~/.config/bash

# Copy scripts
cp -r script ~/.script

# Copy openbox themes
cp -r themes ~/.themes

# Copy bin
sudo cp -r bin/* /usr/local/bin/
# Copy icons for tint2
sudo cp -r config/tint2/icons /usr/local/share/

# Install powerline fonts
git clone https://github.com/powerline/fonts/ ~/fonts
sh ~/fonts/install.sh
