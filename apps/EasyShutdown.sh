#!/bin/bash

#sudo add-apt-repository ppa:trebelnik-stefina/myppa
#sudo apt-get update
#sudo apt-get install easyshutdown complexshutdown
#
#https://launchpad.net/easyshutdown
#https://launchpad.net/complexshutdown
#sudo apt-get install gshutdown

echo "Instalando Easy Shutdown..."
sudo dpkg -i /cdrom/apps/app/EasyShutdown/*.deb > /dev/null 2>&1
sudo rm -r /usr/share/applications/onboard-settings* > /dev/null 2>&1
exit
