#!/bin/bash

#sudo apt-get install python-wxtools

echo "Instalando Brightness..."
sudo dpkg -i /cdrom/programas/app/Brightness/*.deb  > /dev/null 2>&1

sudo tar -C /opt/ -xvf /cdrom/programas/app/Brightness/Brightness_1.0.1.tar.gz > /dev/null 2>&1
sudo mv -f /opt/brightness /usr/bin/ > /dev/null 2>&1

sudo mv -f /opt/*.desktop /usr/share/applications/ > /dev/null 2>&1
exit
