#!/bin/bash

git clone https://github.com/Diolinux/PhotoGIMP.git /tmp/PhotoGIMP

if [[ -d "$HOME/.config/GIMP/2.10/" ]]
then
	echo "~/.config/GIMP/2.10/ detected, installing"
	cp -r /tmp/PhotoGIMP/.var/app/org.gimp.GIMP/config/GIMP/2.10  $HOME/.config/GIMP/
fi
