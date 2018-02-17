#!/bin/bash

#https://launchpad.net/easyshutdown
#https://launchpad.net/complexshutdown
#sudo apt-get install gshutdown

echo "Installing Easy Shutdown..."

sudo add-apt-repository ppa:trebelnik-stefina/myppa
sudo apt-get update
sudo apt-get install easyshutdown complexshutdown

sudo rm -r /usr/share/applications/onboard-settings* > /dev/null 2>&1
exit