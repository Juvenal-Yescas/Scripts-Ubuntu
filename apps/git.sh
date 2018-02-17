#!/bin/bash



echo "Instaling git ..."
sudo apt-get install git

git config --global user.name "name_user"
git config --global user.email "my_email@gmail.com"

git config --global credential.helper store
git config --global credential.helper 'cache --timeout=86400'
exit