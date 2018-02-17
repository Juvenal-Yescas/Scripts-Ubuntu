#!/bin/bash

echo "Remove default apps..."

#sudo apt-get remove brasero
sudo apt-get --yes --force-yes --purge remove brasero  > /dev/null 2>&1
sudo apt-get --yes --force-yes autoremove brasero  > /dev/null 2>&1

#sudo apt-get remove thunderbird 
sudo apt-get --yes --force-yes --purge remove thunderbird  > /dev/null 2>&1
sudo apt-get --yes --force-yes autoremove thunderbird  > /dev/null 2>&1

#sudo apt-get -y --purge remove chmsee
sudo apt-get --yes --force-yes --purge remove chmsee  > /dev/null 2>&1
sudo apt-get --yes --force-yes autoremove chmsee  > /dev/null 2>&1

sudo apt-get --yes --force-yes --purge remove gparted  > /dev/null 2>&1
sudo apt-get --yes --force-yes autoremove gparted  > /dev/null 2>&1

#sudo apt-get --yes --force-yes --purge remove libflashplugin
#sudo apt-get --yes --force-yes autoremove libflashplugin

sudo apt-get --yes --force-yes --purge remove gnome-system-monitor  > /dev/null 2>&1
sudo apt-get --yes --force-yes autoremove gnome-system-monitor  > /dev/null 2>&1

sudo apt-get --yes --force-yes --purge remove remmina  > /dev/null 2>&1
sudo apt-get --yes --force-yes autoremove remmina  > /dev/null 2>&1

sudo apt-get --yes --force-yes --purge remove gdebi  > /dev/null 2>&1
sudo apt-get --yes --force-yes autoremove gdebi  > /dev/null 2>&1

sudo apt-get --yes --force-yes --purge remove remmina-common > /dev/null 2>&1
sudo apt-get --yes --force-yes autoremove remmina-common > /dev/null 2>&1

sudo apt-get --yes --force-yes --purge remove yelp > /dev/null 2>&1
sudo apt-get --yes --force-yes autoremove yelp > /dev/null 2>&1

sudo apt-get --yes --force-yes --purge remove system-config-printer-gnome > /dev/null 2>&1
sudo apt-get --yes --force-yes autoremove system-config-printer-gnome > /dev/null 2>&1

sudo apt-get --yes --force-yes --purge remove crossover > /dev/null 2>&1
sudo apt-get --yes --force-yes autoremove crossover > /dev/null 2>&1

sudo apt-get --yes --force-yes --purge remove simple-scan > /dev/null 2>&1
sudo apt-get --yes --force-yes autoremove simple-scan > /dev/null 2>&1

sudo rm -r /usr/share/applications/flash* > /dev/null 2>&1

sudo rm -r /usr/share/applications/dde-control-* > /dev/null 2>&1
sudo rm -r /usr/share/applications/deepin-boot-* > /dev/null 2>&1
sudo rm -r /usr/share/applications/gnome-font-* > /dev/null 2>&1
sudo rm -r /usr/share/applications/deepin-installer* > /dev/null 2>&1
sudo rm -r /usr/share/applications/pycrust* > /dev/null 2>&1
sudo rm -r /usr/share/applications/xrced* > /dev/null 2>&1
sudo rm -r /usr/share/applications/mintdrivers* > /dev/null 2>&1
sudo apt-get --yes --force-yes autoremove > /dev/null 2>&1
exit