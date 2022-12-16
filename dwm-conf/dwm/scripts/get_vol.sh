#!/bin/sh
 
if [[ $(pactl list sinks | grep -m 1 "Звук выключен:" | cut -d " " -f3) == "yes" ]]; then
    echo 0%
else
    echo $(pactl list sinks | grep -m 1 "Громкость:" | tr -s ' ' | cut -d " " -f5)
fi
