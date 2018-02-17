#!/bin/bash

rm -r $HOME/Desktop/*.desktop > /dev/null 2>&1

/cdrom/programas/app/SurfInternet.sh

echo "Preparando el equipo..."

echo "America/Mexico_City" | sudo tee /etc/timezone > /dev/null 2>&1
sudo dpkg-reconfigure --frontend noninteractive tzdata > /dev/null 2>&1

gsettings set org.gnome.desktop.background picture-uri file:////cdrom/programas/app/a.jpg > /dev/null 2>&1

sudo setxkbmap -model pc105 -layout latam > /dev/null 2>&1
sudo ln -s /cdrom/programas/app/"Teclado Repara.sh" $HOME/Desktop > /dev/null 2>&1
(crontab -l ; echo "*/2 * * * * sudo setxkbmap -model pc105 -layout latam") 2>&1 | grep -v "no crontab" | sort | uniq | crontab -

sudo ln -s /cdrom/programas $HOME/Desktop > /dev/null 2>&1
sudo ln -s /cdrom/temp $HOME/Desktop > /dev/null 2>&1

/cdrom/programas/app/Brightness/Brightness.sh
/cdrom/programas/app/uninstall.sh

exit