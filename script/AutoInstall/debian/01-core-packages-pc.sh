# This is a script for autoinstalling packages on PC

# ChangeLogs 
# 0.5 - Create it
# 0.6 - Add packages : thunderbolt-tools,xbacklight,feh
#	Remove packages : thunderbird	
#     - Add packages : pulseaudio,audacious
#	Add new section : LaTeX

####################
#		   #
#      Update	   #
#                  #
####################

apt update && upgrade -y

####################
#		   #
#      System	   #
#                  #
####################

apt install -y \
#	intel-microcode 
	udisks2 \
	libblockdev-mdraid2

####################
#		   #
#     Terminal	   #
#                  #
####################

apt install -y \
	rxvt-unicode 

####################
#		   #
#     Utility	   #
#                  #
####################

apt install -y \
	aptitude \
	acpi \
	tlp \
	xorg \
	xinit \
	xserver-xorg-video-intel \
	git \
	sudo \
	ssh \
	net-tools \
	alsa-utils \
	icewm \
	gcin \
	gcin-anthy \
	powerline \
	rxvt-unicode \
	vim \
	numlockx \
	rsync \
	libappindicator3-1 \
	g++ \
	rofi \
	ranger


echo "Take a break..."
sleep 10

####################
#		   #
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
#		   #
#     Graphic	   #
#                  #
####################

apt install -y \
	i3 \
	icewm \
	hsetroot \
	gimp \
        screengrab \
	feh

####################
#		   #
#    WebBrowser	   #
#                  #
####################

apt install -y \
	chromium \
	chromium-driver \
	chromium-l10n 

####################
#		   #
#       A/V	   #
#                  #
####################

apt install -y \
	mpv \
	vlc \
	ffmpeg \
	audacious

####################
#		   #
#      Extra	   #
#                  #
####################

apt install -y \
	evince \
	geeqie \
	telegram-desktop 

#######################
#		      #
#   	LaTeX         #
#                     #
#######################

apt install texlive \
	texlive-xetex \
	texlive-lang-chinese \
	texlive-bibtex-extra \
	texlive-science \
	latex-cjk-all
