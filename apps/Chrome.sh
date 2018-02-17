#!/bin/bash
echo "Installing Chrome..."

# Remove previous config and data
sudo rm -r $HOME/.config/google-chrome*  > /dev/null 2>&1

# Installing
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt-get install google-chrome-stable

# Config and data copy
#sudo tar -C $HOME/.config -xvf /cdrom/Chrome/Config-Chrome.tar.gz > /dev/null 2>&1

# Set default chrome
sudo sed -i 's/firefox.desktop/google-chrome.desktop/g' /usr/share/applications/defaults.list > /dev/null 2>&1
exit

# Remove

#sudo apt-get --yes --force-yes --purge remove google-chrome-stable  > /dev/null 2>&1
#sudo apt-get --yes --force-yes autoremove google-chrome-stable  > /dev/null 2>&1