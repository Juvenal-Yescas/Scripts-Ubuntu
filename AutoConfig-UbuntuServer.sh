!/bin/bash
# Autoconfig ubuntuserver and update

echo "Config and update ubuntu server 16.04"
sudo locale-gen "en_US.UTF-8"
sudo locale-gen en_US en_US.UTF-8
sudo cp /etc/apt/sources.list{,.bak}
sudo rm -r /etc/apt/sources.list
wget https://gist.githubusercontent.com/Juvenal-yescas/0a53da7f87d10b645a7851e563fa747e/raw/a6adaa6d3eecc6923bef2f8c06ac4be16bdc7532/sources.list
sudo mv sources.list /etc/apt/
sudo apt-get update
