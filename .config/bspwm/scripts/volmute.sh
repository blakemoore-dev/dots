#!/usr/bin/bash
MASTER_SINK=$(pactl list short sinks | grep "RUNNING" | awk '{print $1}')

pactl set-sink-mute $MASTER_SINK toggle

pactl list sinks | grep -E "RUNNING|Volume" | grep -A1 "RUNNING" | grep -E -o "[[:digit:]]{1,5}%" | head -n1

