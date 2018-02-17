#!/bin/bash
echo "Install Chrome..."

#
#sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
#sudo apt-get update
#sudo apt-get install google-chrome-stable

#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb


sudo rm -r $HOME/.config/google-chrome*  > /dev/null 2>&1

sudo dpkg -i /cdrom/apps/app/Chrome/*.deb  > /dev/null 2>&1

#sudo rm -rf /usr/share/applications/google-chrome* > /dev/null 2>&1

sudo tar -C $HOME/.config -xvf /cdrom/apps/app/Chrome/Config-Chrome.tar.gz > /dev/null 2>&1
#sudo cp -f $HOME/.config/*.desktop $HOME/Desktop/ > /dev/null 2>&1
#sudo mv -f $HOME/.config/*.desktop /usr/share/applications/ > /dev/null 2>&1

sudo sed -i 's/firefox.desktop/google-chrome.desktop/g' /usr/share/applications/defaults.list > /dev/null 2>&1
exit

#sudo apt-get --yes --force-yes --purge remove google-chrome-stable  > /dev/null 2>&1
#sudo apt-get --yes --force-yes autoremove google-chrome-stable  > /dev/null 2>&1
