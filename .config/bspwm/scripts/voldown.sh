#!/usr/bin/bash
MASTER_SINK=$(pactl list short sinks | grep "RUNNING" | awk '{print $1}')
if [ $# -eq 0 ]
then
	    pactl set-sink-volume $MASTER_SINK -5%
    else
	        pactl set-sink-volume $MASTER_SINK +$@%
fi
pactl list sinks | grep -E "RUNNING|Volume" | grep -A1 "RUNNING" | grep -E -o "[[:digit:]]{1,5}%" | head -n1

