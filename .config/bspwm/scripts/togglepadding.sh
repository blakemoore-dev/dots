#!/usr/bin/bash

PADVALUE=$(bspc config top_padding)

if [ $PADVALUE -ne 0 ];then
	polybar-msg cmd toggle && bspc config top_padding 0
else
	polybar-msg cmd toggle && bspc config top_padding 24
fi
