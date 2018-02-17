 
#!/bin/bash
sudo ifconfig wlan0 down
echo "sudo ifconfig wlan0 down"
sudo dhclient wlan0 -r
echo "dhclient wlan0 -r"
sudo ifconfig wlan0 up
echo "ifconfig wlan0 up"
sudo iwconfig wlan0 essid INFINITUMF4A3CF
echo "iwconfig wlan0 essid INFINITUMF4A3CF"
sudo iwconfig wlan0 mode Managed
echo "iwconfig wlan0 mode Managed"
sudo iwconfig wlan0 key 6B07E655B9
echo "iwconfig wlan0 key 6B07E655B9"
sudo dhclient wlan0
echo "dhclient wlan0"
exit