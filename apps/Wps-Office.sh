#!/bin/bash
echo "Instalanddo WPS-Office..."

#http://wps-community.org/downloads

sudo dpkg -i /cdrom/programas/app/wps-office/*.deb > /dev/null 2>&1
sudo tar -C $HOME -xvf /cdrom/programas/app/wps-office/wps-office.tar.gz  > /dev/null 2>&1
sudo mv -f $HOME/kingsoft $HOME/.config/ > /dev/null 2>&1
sudo mv -f $HOME/Kingsoft $HOME/.config/ > /dev/null 2>&1
sudo cp -f /cdrom/programas/app/wps-office/es_ES.zip /opt/kingsoft/wps-office/office6/dicts
cd /opt/kingsoft/wps-office/office6/dicts
sudo rm -r en_US
sudo unzip es_ES.zip
sudo rm -r /opt/kingsoft/wps-office/office6/dicts/es_ES.zip
exit