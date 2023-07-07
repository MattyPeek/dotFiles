#!/bin/sh

systemctl --user start xdg-desktop-portal &
#/usr/bin/pipewire &
#/urs/bin/pipewire-pulse &
#/usr/bin/wireplumber &


if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# For Macbook:
#xrandr --dpi 175

spotifyd &

# Run .Xmodmaprc
xmodmap $HOME/.Xmodmaprc

systemctl --user start xdg-desktop-portal.service
xinput --set-prop "Mad Catz Mad Catz R.A.T.7 Mouse" "libinput Accel Speed" -1


### WM ###
#exec i3
exec regolith-session
#exec gnome-session
#exec plasma-session
