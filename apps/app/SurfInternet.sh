#!/bin/bash
echo "Preparando para navegar..."

sudo ln -s /cdrom/programas/app/"Repara Internet.sh" $HOME/Desktop > /dev/null 2>&1
cp -r /cdrom/programas/app/Redes.txt $HOME/Desktop > /dev/null 2>&1
sudo chmod -x $HOME/Desktop/Redes.txt > /dev/null 2>&1
sudo rm -rf /etc/hosts > /dev/null 2>&1
sudo cp -r /cdrom/programas/app/hosts /etc/ > /dev/null 2>&1
/cdrom/programas/Chrome.sh
exit