#!/bin/bash

# ^c$var^ = fg color
# ^b$var^ = bg color

interval=0

# load colors
. ~/dwm/bar_themes/onedark

cpu() {
  cpu_val=$(grep -o "^[^ ]*" /proc/loadavg)

  printf "^c$black^ ^b$green^ CPU"
  printf "^c$white^ ^b$grey^ $cpu_val"
}

pkg_updates() {
  #updates=$(doas xbps-install -un | wc -l) # void
  updates=$(checkupdates 2>/dev/null | wc -l) # arch
  # updates=$(aptitude search '~U' | wc -l)  # apt (ubuntu,debian etc)

  if [ -z "$updates" ]; then
    printf "  ^c$green^    Fully Updated"
  else
    printf "  ^c$green^    $updates"" updates"
  fi
}

vol(){
if [[ $(pactl list sinks | grep -m 1 "Звук выключен:" | cut -d " " -f3) == "yes" ]]; then
    echo 0%
else
    echo $(pactl list sinks | grep -m 1 "Громкость:" | tr -s ' ' | cut -d " " -f5)
fi
}

battery() {
  get_capacity="$(cat /sys/class/power_supply/BAT0/capacity)"
  printf "^c$blue^   $get_capacity"
}

brightness() {
  printf "^c$red^   "
  printf "^c$red^%.0f\n" $(cat /sys/class/backlight/*/brightness)
}

mem() {
  printf "^c$blue^^b$black^ 🧠 "
  printf "^c$blue^ $(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g)"
}

wlan() {
	case "$(cat /sys/class/net/wl*/operstate 2>/dev/null)" in
	up) printf "^c$black^ ^b$blue^ 🌐 ^d^%s" " ^c$blue^UP" ;;
	down) printf "^c$black^ ^b$blue^ 🌐 ^d^%s" " ^c$blue^DOWN" ;;
	esac
}

skd() {
 $( xset -q|grep LED| awk '{ if (substr ($10,5,1) == 1) print " RU "; else print " EN "; }' )
}

clock() {
	printf "^c$black^^b$blue^ $(date '+%H:%M')  "
}

while true; do

  [ $interval = 0 ] || [ $(($interval % 3600)) = 0 ] && updates=$(pkg_updates)
  interval=$((interval + 1))

  sleep 1 && xsetroot -name "$(battery) $(brightness) $(mem) $(wlan)  $(vol) $( xset -q|grep LED| awk '{ if (substr ($10,5,1) == 1) print " RU "; else print " EN "; }' ) $(clock)"
done
