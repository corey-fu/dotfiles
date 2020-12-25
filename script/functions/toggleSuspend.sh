#!/bin/sh

TOGGLE=$HOME/.toggle

#touch $PATH/echo-0.log

#LOG=$PATH/echo-0.log

if [ ! -e $TOGGLE ]; then #unmasked:disabled
	touch $TOGGLE
	sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target	
else
	rm $TOGGLE #masked:enabled
	sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target
fi
