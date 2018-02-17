#!/bin/bash

#https://sublimecrack.wordpress.com/
#printf '\x31\xc0' | dd seek=$((0xd153)) conv=notrunc bs=1 of=/opt/sublime_text/sublime_text
#https://www.sublimetext.com/3dev

echo "Instalando Sublime..."

sudo dpkg -i /cdrom/programas/app/sublime/*.deb  > /dev/null 2>&1 

sudo tar -C $HOME -xvf /cdrom/programas/app/sublime/sublime-text.tar.gz > /dev/null 2>&1 

sudo sed -i 's/gedit.desktop/sublime_text.desktop/g' /usr/share/applications/defaults.list > /dev/null 2>&1 

sudo rm -r /opt/sublime_text/Packages/"Language - English.sublime-package" > /dev/null 2>&1 
sudo mv -f $HOME/"Language - Spanish.sublime-package" /opt/sublime_text/Packages/ > /dev/null 2>&1 

sudo rm -r /opt/sublime_text/Packages/"Color Scheme - Default.sublime-package" > /dev/null 2>&1 

sudo rm -r /opt/sublime_text/Packages/Java.sublime-package > /dev/null 2>&1 
sudo mv -f $HOME/Java.sublime-package /opt/sublime_text/Packages/ > /dev/null 2>&1 

sudo rm -r /opt/sublime_text/sublime_text > /dev/null 2>&1 
sudo mv -f $HOME/sublime_text /opt/sublime_text/ > /dev/null 2>&1 

sudo chmod +x /opt/sublime_text/sublime_text > /dev/null 2>&1 

subl > /dev/null 2>&1 

sleep 3 > /dev/null 2>&1 
proceso="sublime" > /dev/null 2>&1 
kill -9 `ps -ef|grep -v grep |grep $proceso| awk '{print $2}'` > /dev/null 2>&1 

sudo rm -r $HOME/.config/sublime-text-3/Packages > /dev/null 2>&1 
sudo mv -f $HOME/Packages $HOME/.config/sublime-text-3/ > /dev/null 2>&1 

sudo rm -r $HOME/.config/sublime-text-3/"Installed Packages" > /dev/null 2>&1 
sudo mv -f $HOME/"Installed Packages" $HOME/.config/sublime-text-3/ > /dev/null 2>&1 

exit
