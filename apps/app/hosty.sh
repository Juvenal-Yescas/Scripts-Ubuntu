#!/bin/bash
#
#https://github.com/astrolince/hosty
#
sudo apt-get install wget curl gawk
#sudo rm /usr/local/bin/hosty
#sudo wget -c https://github.com/juankfree/hosty/raw/master/hosty -O /usr/local/bin/hosty
#sudo chmod +x /usr/local/bin/hosty
#hosty
#sudo cp /etc/hosts.original /etc/hosts
#sudo rm /usr/local/bin/hosty
#
#http://textmechanic.com/Remove-Duplicate-Lines.html

# Add ad-blocking hosts files in this array
HOSTS=("http://adaway.org/hosts.txt" "http://winhelp2002.mvps.org/hosts.txt" "http://hosts-file.net/ad_servers.asp" "http://someonewhocares.org/hosts/hosts" "http://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext" "https://raw.githubusercontent.com/jorgicio/publicidad-chile/master/hosts.txt")
# Add AdBlock Plus rules files in this array
RULES=("https://easylist-downloads.adblockplus.org/easylist.txt" "https://data.getadblock.com/filters/adblock_custom.txt" "https://easylist-downloads.adblockplus.org/easyprivacy.txt" "http://abp.mozilla-hispano.org/nauscopio/filtros.txt" "https://easylist-downloads.adblockplus.org/malwaredomains_full.txt")
# Set IP to redirect
IP="0.0.0.0"

orig=$(mktemp)
ln=$(sed -n '/^# Ad blocking hosts generated/=' /etc/hosts)
if [ -z $ln ]; then
	if [ "$1" == "--restore" ]; then
		echo "There is nothing to restore."
		exit 0
	fi
	cat /etc/hosts > $orig
else
	let ln-=1
	head -n $ln /etc/hosts > $orig
	if [ "$1" == "--restore" ]; then
		sudo bash -c "cat $orig > /etc/hosts"
		echo "/etc/hosts restore completed."
		exit 0
	fi
fi

# If this is our first run, create a whitelist file and set to read-only for safety
if [ ! -f /etc/hosts.whitelist ]
then
	echo "Creating whitelist file..."
	sudo touch /etc/hosts.whitelist
	sudo chmod 444 /etc/hosts.whitelist
	echo
fi

host=$(mktemp)
aux=$(mktemp)
white=$(mktemp)

echo "Downloading ad-blocking files..."
# Obtain various hosts files and merge into one
for i in "${HOSTS[@]}"
do
	wget --no-cache -nv -O $aux $i
	if [ $? != 0 ]; then
		echo "Error downloading $i"
	else
		sed -e '/^[[:space:]]*\(127\.0\.0\.1\|0\.0\.0\.0\|255\.255\.255\.0\)[[:space:]]/!d' -e 's/[[:space:]]\+/ /g' $aux | awk '$2~/^[^# ]/ {print $2}' >> $host
	fi
done
# Obtain various AdBlock Plus rules files and merge into one
for i in "${RULES[@]}"
do
	wget --no-cache -nv -O $aux $i
	if [ $? != 0 ]; then
		echo "Error downloading $i"
	else
		awk '/^\|\|[a-z][a-z0-9\-_.]+\.[a-z]+\^$/ {substr($0,3,length($0)-3)}' $aux >> $host
	fi
done


echo
echo "Excluding localhost and similar domains..."
sed -e '/^\(localhost\|localhost\.localdomain\|local\|broadcasthost\|ip6-localhost\|ip6-loopback\|ip6-localnet\|ip6-mcastprefix\|ip6-allnodes\|ip6-allrouters\)$/d' -i $host

if [ "$1" != "--all" ] && [ "$2" != "--all" ]; then
	echo
	echo "Applying recommended whitelist (Run hosty --all to avoid this step)..."
	sed -e '/\(smarturl\.it\|da\.feedsportal\.com\|any\.gs\|pixel\.everesttech\.net\|www\.googleadservices\.com\|maxcdn\.com\|static\.addtoany\.com\|addthis\.com\|googletagmanager\.com\|addthiscdn\.com\|sharethis\.com\|twitter\.com\|pinterest\.com\|ojrq\.net\|rpxnow\.com\|google-analytics\.com\|shorte\.st\|adf\.ly\|www\.linkbucks\.com\|static\.linkbucks\.com\)$/d' -i $host
fi

echo
echo "Applying user whitelist, cleaning and de-duplicating..."
cat /etc/hosts.whitelist > $white
awk '/^\s*[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/ {print $2}' $orig >> $white
awk -v ip=$IP 'FNR==NR {arr[$1]++} FNR!=NR {if (!arr[$1]++) print ip, $1}' $white $host > $aux

echo
echo "Building /etc/hosts..."
cat $orig > $host

echo "# Ad blocking hosts generated $(date)" >> $host
echo "# Don't write below this line. It will be lost if you run hosty again." >> $host
cat $aux >> $host

ln=$(grep -c "$IP" $host)

if [ "$1" != "--debug" ] && [ "$2" != "--debug" ]; then
	sudo bash -c "cat $host > /etc/hosts"
else
	echo
	echo "You can see the results in $host"
fi

echo
echo "Done, $ln websites blocked."
echo
echo "You can always restore your original hosts file with this command:"
echo "	$ sudo hosty --restore"
exit