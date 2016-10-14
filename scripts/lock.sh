#!/usr/bin/env bash

icon="$HOME/.i3/icon.png"
tmpbg='/tmp/screen.png'

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
i3lock -i "$tmpbg" -n -f
#i3lock -i ~/.i3/wallpaper/wallhaven-435146.png -n -f


