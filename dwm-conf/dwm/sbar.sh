#!/usr/bin/bash
while true; do     
xsetroot -name "$( ~/dwm/scripts/inet ) |  $(cat /sys/class/backlight/amdgpu_bl1/brightness)% |  $( ~/dwm/scripts/vol ) |  $( xset -q|grep LED| awk '{ if (substr ($10,5,1) == 1) print " RU "; else print " EN "; }' ) | $( ~/dwm/scripts/battery ) | $( date '+%H:%M')"
sleep 1s
    	
  done 
