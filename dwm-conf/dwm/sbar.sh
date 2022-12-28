#!/usr/bin/bash
while true; do     
xsetroot -name "$( ~/dwm/scripts/dwmweather ) | $( ~/dwm/scripts/memory ) |  $( xset -q|grep LED| awk '{ if (substr ($10,5,1) == 1) print " RU "; else print " EN "; }' ) | $( ~/dwm/scripts/inet ) |  $( ~/dwm/scripts/vol ) |  $(cat /sys/class/backlight/amdgpu_bl0/brightness)% | $( ~/dwm/scripts/battery ) | $( date +"%T" ) | "
sleep 1s
    	
  done 
