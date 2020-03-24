#!/bin/sh

TOOGLE=$HOME/.toogle

#touch $PATH/echo-0.log

#LOG=$PATH/echo-0.log

if [ ! -e $TOOGLE ]; then #unmasked:disabled
	touch $TOOGLE
	sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target	
else
	rm $TOOGLE #masked:enabled
	sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target
fi
