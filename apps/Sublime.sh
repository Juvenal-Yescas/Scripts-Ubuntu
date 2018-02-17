#!/bin/bash

#https://sublimecrack.wordpress.com/
#https://www.sublimetext.com/3dev

echo "Installing Sublime..."

sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

# Set default
sudo sed -i 's/gedit.desktop/sublime_text.desktop/g' /usr/share/applications/defaults.list > /dev/null 2>&1 

# Open sublime and exit
# subl > /dev/null 2>&1 
# sleep 3 > /dev/null 2>&1 
# proceso="sublime" > /dev/null 2>&1 
# kill -9 `ps -ef|grep -v grep |grep $proceso| awk '{print $2}'` > /dev/null 2>&1 
exit