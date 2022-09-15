#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# For Macbook:
#xrandr --dpi 175

# Run .Xmodmaprc
xmodmap $HOME/.Xmodmaprc

exec i3
