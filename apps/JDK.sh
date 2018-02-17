#!/bin/sh
echo "Install JDK 8..."
sudo mkdir -p /usr/lib/jvm/ > /dev/null 2>&1
sudo tar -C /usr/lib/jvm/ -xvf /cdrom/apps/app/jdk-8u66-linux-x64.tar.gz > /dev/null > /dev/null 2>&1
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.8.0_66/bin/java" 1 > /dev/null 2>&1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0_66/bin/javac" 1 > /dev/null 2>&1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.8.0_66/bin/javaws" 1 > /dev/null 2>&1

sudo chmod a+x /usr/bin/java > /dev/null 2>&1
sudo chmod a+x /usr/bin/javac > /dev/null 2>&1
sudo chmod a+x /usr/bin/javaws > /dev/null 2>&1

sudo chown -R root:root /usr/lib/jvm/jdk1.8.0_66 > /dev/null 2>&1

sudo update-alternatives --config java > /dev/null 2>&1
sudo update-alternatives --config javac > /dev/null 2>&1
sudo update-alternatives --config javaws > /dev/null 2>&1

mkdir ~/.mozilla/plugins > /dev/null 2>&1
ln -s /usr/lib/jvm/jdk1.8.0_66/jre/lib/i386/libnpjp2.so ~/.mozilla/plugins/ > /dev/null 2>&1
exit
