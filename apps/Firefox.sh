#!/bin/bash
echo "Installing Firefox..."

# Data
sudo rm -r $HOME/.mozilla  > /dev/null 2>&1

sudo apt-get install firefox 

# To spanish
sudo apt-get install firefox-locale-es

# Config
#sudo tar -C $HOME -xvf /cdrom/firefox/ConfigFirefox.tar.gz > /dev/null 2>&1
#sudo ln -s /usr/lib/firefox/firefox /usr/bin/firefox > /dev/null 2>&1
#find /usr/share/applications -name 'flash*' -exec rm -f '{}' \;
exit