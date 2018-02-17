#!/bin/bash

echo "Startup..."

# Change timezone
echo "America/Mexico_City" | sudo tee /etc/timezone > /dev/null 2>&1
sudo dpkg-reconfigure --frontend noninteractive tzdata > /dev/null 2>&1

# Set backgroud 
gsettings set org.gnome.desktop.background picture-uri file:////cdrom/wallpaper.jpg > /dev/null 2>&1

# Set keyboard latam
sudo setxkbmap -model pc105 -layout latam > /dev/null 2>&1
(crontab -l ; echo "*/2 * * * * sudo setxkbmap -model pc105 -layout latam") 2>&1 | grep -v "no crontab" | sort | uniq | crontab -
exit