#!/bin/bash

#sudo apt-get install onboard

echo "Instalando Onboard Teclado Virtual..."
sudo dpkg -i /cdrom/programas/app/Onboard/*.deb > /dev/null 2>&1
sudo rm -r /usr/share/applications/onboar-setting* > /dev/null 2>&1
exit
