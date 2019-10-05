#!/bin/sh

TOOGLE=$HOME/.toogle

#touch $PATH/echo-0.log

#LOG=$PATH/echo-0.log

if [ ! -e $TOOGLE ]; then
	touch $TOOGLE
	echo 0
else
	rm $TOOGLE
	echo 1
fi
