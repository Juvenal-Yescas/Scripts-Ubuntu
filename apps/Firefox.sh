#!/bin/bash
echo "Install Firefox..."

#sudo apt-get install firefox 
#sudo apt-get install firefox-locale-es

sudo rm -r /usr/bin/firefox  > /dev/null 2>&1
sudo rm -r /usr/lib/firefox > /dev/null 2>&1
sudo rm -r $HOME/.mozilla  > /dev/null 2>&1
sudo rm -r /usr/share/applications/firefox*  > /dev/null 2>&1

#sudo tar -C /usr/lib -xjf /cdrom/apps/app/firefox/firefox* > /dev/null 2>&1
sudo dpkg -i /cdrom/apps/app/firefox/*.deb
sudo tar -C $HOME -xvf /cdrom/apps/app/firefox/ConfigFirefox.tar.gz > /dev/null 2>&1

#sudo ln -s /usr/lib/firefox/firefox /usr/bin/firefox > /dev/null 2>&1
sudo rm -r /usr/share/applications/firefox*  > /dev/null 2>&1
#find /usr/share/applications -name 'flash*' -exec rm -f '{}' \;

sudo mv -f $HOME/*.desktop /usr/share/applications/ > /dev/null 2>&1
sudo cp -f $HOME/*.so /rofs/usr/lib/mozilla/plugins/ > /dev/null 2>&1
sudo mv -f $HOME/*.so /usr/lib/flashplugin-installer/ > /dev/null 2>&1
sudo rm -r $HOME/*.so > /dev/null 2>&1
#sudo chmod +x /usr/bin/firefox  > /dev/null 2>&1
#sudo chmod +x /usr/lib/firefox/firefox > /dev/null 2>&1
sudo chmod +x /usr/share/applications/firefox* > /dev/null 2>&1
exit

