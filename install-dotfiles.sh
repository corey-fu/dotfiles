#!/bin/bash

# Copy bashrc
mv ~/.bashrc ~/.bashrc.backup
cp config/bash/.bashrc ~/

# Copy configs
rsync -av config/ ~/.config/
rm -rf ~/.config/bash
