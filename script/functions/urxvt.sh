#!/bin/bash

[ -f ~/.Xresources ] && xrdb -merge -I$HOME ~/.Xresources
rxvt-unicode
