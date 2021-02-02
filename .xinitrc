#!/bin/sh

[ -f ~/.Xresources ] && xrdb -merge -I$HOME ~/.Xresources
#[[ -f ~/.config/xrdb/.X164.dpi ]] && xrdb -override ~/.config/xrdb/.X164.dpi
#[[ -f ~/.config/xrdb/.X128.dpi ]] && xrdb -override ~/.config/xrdb/.X128.dpi

## language environment
export LANG="zh_TW.UTF-8"
export LC_CTYPE="zh_TW.UTF-8"
export LC_ALL="zh_TW.UTF-8"

## input method 
export XMODIFIERS="@im=gcin"
export GTK_IM_MODULE="gcin"
export QT_IM_MODULE="gcin"
gcin &
#export XMODIFIERS="@im=fcitx"
#export GTK_IM_MODULE="fcitx"
#export QT_IM_MODULE="fcitx"
#fcitx&

## background-image
feh --bg-center wallpapers/zentree.png

## applications
# notify-send
dunst&
# Initiate Bluetooth GUI
blueman-applet&
# Start 'play-with-mpv' server
play-with-mpv&
# Instant Messenger
telegram-desktop -startintray &
# Mail Client
#thunderbird&

#dbus-update-activation-environment --systemd DISPLAY
#eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
#export SSH_AUTH_SOCK

## Start a de or wm
#exec startkde
#exec i3
exec openbox-session
#exec icewm
#exec qtile

