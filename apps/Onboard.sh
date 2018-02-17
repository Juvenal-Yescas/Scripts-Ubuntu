#!/bin/bash
echo "Installing Onboard Keyboard Virtual..."
sudo apt-get install onboard
sudo rm -r /usr/share/applications/onboar-setting* > /dev/null 2>&1
exit