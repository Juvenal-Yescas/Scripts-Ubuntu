#!/bin/bash

#sudo apt-get install git

echo "Instalando git ..."
sudo dpkg -i /cdrom/programas/app/git/*.deb

git config --global user.name "Wikel"
git config --global user.email "hola@grr.la"

git config --global credential.helper store
git config --global credential.helper 'cache --timeout=86400'
exit