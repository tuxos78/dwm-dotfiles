#!/bin/sh
# works on any init system
# requirements: dmenu, xorg-setxkbmap
kb="$(setxkbmap -query | grep -oP 'layout:\s*\K\w+')" || exit 1

case $BLOCK_BUTTON in
	1) kb_choice="$(awk '/! layout/{flag=1; next} /! variant/{flag=0} flag {print $2, "- " $1}' /usr/share/X11/xkb/rules/base.lst | dmenu -l 15)"
	kb="$(echo "$kb_choice" | awk '{print $3}')"
	setxkbmap "$kb"
	pkill -RTMIN+30 "${STATUSBAR:-dwmblocks}";;
	3) notify-send "⌨  Keyboard/language module" "$(printf "%s" "\- Current layout: $(setxkbmap -query | grep -oP 'layout:\s*\K\w+')")
- Left click to change keyboard.";;
	6) "$TERMINAL" -e "$EDITOR" "$0" ;;
esac

echo "$kb"
