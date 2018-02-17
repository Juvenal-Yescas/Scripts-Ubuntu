#!/bin/bash

echo "Installing Vlc Media Player..."
sudo apt-get install vlc

# Set default
sudo sed -i 's/deepin-media-player.desktop/vlc.desktop/g' /usr/share/applications/defaults.list > /dev/null 2>&1
exit
