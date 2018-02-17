#!/bin/bash

# LAMP - Ubuntu

sudo mkdir /var/www/
sudo mkdir /var/www/html/

sudo chmod 0777 /var/www
sudo chmod 0777 /var/www/html

sudo chown deepin /var/www/html

sudo apt-get install apache2 apache2-utils

sudo apt-get install mysql-client mysql-server

sudo apt-get install php5 php5-mysql libapache2-mod-php5

sudo apt-get install phpmyadmin

echo "add the line : Include /etc/phpmyadmin/apache.conf "
sudo gedit /etc/apache2/apache2.conf

echo "save it : ServerName localhost "
sudo gedit /etc/apache2/httpd.conf

sudo php5enmod mcrypt

sudo service apache2 restart
exit;