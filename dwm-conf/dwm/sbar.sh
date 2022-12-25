#!/usr/bin/bash
while true; do     
xsetroot -name " | $( ~/dwm/scripts/disk.sh )|  $( xset -q|grep LED| awk '{ if (substr ($10,5,1) == 1) print " RU "; else print " EN "; }' ) | $( ~/dwm/scripts/inet.sh ) |  $( ~/dwm/scripts/vol.sh ) |  $(cat /sys/class/backlight/amdgpu_bl0/brightness)% | $( ~/dwm/scripts/battery.sh ) | $( date +"%T" ) | "
sleep 1s
    	
  done 
