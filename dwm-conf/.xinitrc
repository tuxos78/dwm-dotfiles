# start polkit
if [[ ! `pidof xfce-polkit` ]]; then
    /usr/lib/xfce-polkit/xfce-polkit &
fi

#while :
#do
#	xsetroot -name "$(date +"%R / %a %d %b") / $(hostname)"; sleep 60
#done &

#autostart
brightnessctl s 15% &
picom &
dunst &
#twmnd &
dwmblocks &
# sets wallpaper using feh
sh ~/.fehbg &

sh ~/dwm/sbar.sh &

exec dwm
