#!/bin/bash

# This is a script for autoinstalling packages on the debian-based-system

# ChangeLogs 
# 0.5 - Created
# 0.6 - Add packages : thunderbolt-tools,xbacklight,feh
#	    Remove package : thunderbird	
#	    Add new section : Powerline Fonts
#       Add packages : pulseaudio,audacious
#	    Add new section : LaTeX
#       Change the purpose
#       Remove the driver package for intel graphics
#       Add some bluetooth utility
#       Move alsa & pulseaudio packages to the A/V section
#       Add package : thermald


####################
#	        	   #
#      Update	   #
#                  #
####################

apt update && upgrade -y

####################
#		           #
#      System	   #
#                  #
####################

apt install -y \
    thermald

#	intel-microcode \
#	thunderbolt-tools

####################
#		           #
#     Terminal	   #
#                  #
####################

apt install -y \
	rxvt-unicode 

####################
#	        	   #
#     Utility	   #
#                  #
####################

apt install -y \
	aptitude \
	acpi \
	tlp \
	xorg \
	xinit \
	xbacklight \
	git \
	sudo \
	ssh \
	net-tools \
	network-manager \
	gcin \
	gcin-anthy \
	powerline \
	rxvt-unicode \
	vim \
	wpasupplicant \
	numlockx \
	rsync \
	libappindicator3-1 \
	g++ \
	rofi \
	ranger \
    bluez-firmware \
    blueman

####################
#		           #
#       A/V	       #
#                  #
####################

apt install -y \
	alsa-utils \
	pulseaudio \
    pulseaudio-module-bluetooth \
    pavucontrol \
	mpv \
	vlc \
	ffmpeg \
    audacious

echo "Take a break..."
sleep 10

####################
#       		   #
#      Fonts	   #
#                  #
####################

apt install -y \
	xfonts-intl-chinese \
	xfonts-intl-chinese-big \
	fonts-arphic-bkai00mp \
	fonts-arphic-bsmi00lp \
	fonts-arphic-gkai00mp \
	fonts-arphic-ukai \
	fonts-arphic-uming \
	fonts-wqy-zenhei \
	fonts-wqy-microhei \
	fonts-powerline \
	fonts-symbola \
	unifont \
	fonts-noto \
	fonts-font-awesome 	

echo "Take a break..."
sleep 5

####################
#	        	   #
#     Graphic	   #
#                  #
####################

apt install -y \
    openbox \
	i3 \
	icewm \
	hsetroot \
	gimp \
    screengrab \
	feh \
    scrot

####################
#		           #
#    WebBrowser	   #
#                  #
####################

apt install -y \
	chromium \
	chromium-driver \
	chromium-l10n 


####################
#		           #
#      Extra	   #
#                  #
####################

apt install -y \
	evince \
	geeqie \
	telegram-desktop 

#######################
#		              #
#   Powerline fonts   #
#                     #
#######################

#cd $HOME
#git clone https://github.com/powerline/fonts
#sh fonts/install.sh

#######################
#		              # 
#   	LaTeX         #
#                     #
#######################

apt install -y \
    texlive \
	texlive-xetex \
	texlive-lang-chinese \
	texlive-bibtex-extra \
	texlive-science \
	latex-cjk-all
