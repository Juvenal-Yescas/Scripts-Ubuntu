#!/bin/bash
#sudo apt-get install vlc
echo "Instalando Vlc Media Player..."
sudo dpkg -i /cdrom/programas/app/vlc/*.deb > /dev/null 2>&1
sudo sed -i 's/deepin-media-player.desktop/vlc.desktop/g' /usr/share/applications/defaults.list > /dev/null 2>&1
exit
