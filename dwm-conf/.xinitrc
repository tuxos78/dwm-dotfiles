# start polkit
if [[ ! `pidof xfce-polkit` ]]; then
    /usr/lib/xfce-polkit/xfce-polkit &
fi

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
