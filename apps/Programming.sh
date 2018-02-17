#!/bin/sh

# JDK installed?

JDK="/usr/lib/jvm/"
if [ -d $JDK ]; then
	echo "JDK ok!"
else
	/cdrom/apps/JDK.sh
fi

# Netbeans installed?
netbeans="$HOME/netbeans-8.1"
if [ -d $netbeans ]; then
	echo "Netbeans ok!"
else
	/cdrom/apps/Netbeans.sh
fi

# Sublime installed?
sublime="/opt/sublime_text"
if [ -d $sublime ]; then
	echo "Sublime ok!"
else
	/cdrom/apps/Sublime.sh
fi
exit