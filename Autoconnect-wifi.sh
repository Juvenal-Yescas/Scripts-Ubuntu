#!/bin/bash
# Fix network autoconnect
sudo ifconfig wlan0 down
echo "sudo ifconfig wlan0 down"
sudo dhclient wlan0 -r
echo "dhclient wlan0 -r"
sudo ifconfig wlan0 up
echo "ifconfig wlan0 up"
sudo iwconfig wlan0 essid name_my_wifi
echo "iwconfig wlan0 essid name_my_wifi"
sudo iwconfig wlan0 mode Managed
echo "iwconfig wlan0 mode Managed"
sudo iwconfig wlan0 key password_wifi
echo "iwconfig wlan0 key password_wifi"
sudo dhclient wlan0
echo "dhclient wlan0"
exit