#!/bin/bash
# file to save the last recorded ip
LASTIPFILE=/tmp/lastip
# file to save an ip-history and IP Update Script Path
SCRIPT_PATH="/home/USER"
LOGFILE=$SCRIPT_PATH/ip.log

# if lastipfile does not exist, create it
if [ ! -e $LASTIPFILE ]; then
echo "NoIpSavedYet" > $LASTIPFILE
fi

# get the current ip with a script from www.gimme-th.at
IP=`wget "http://checkip4.spdns.de" -O "-" --quiet`
# Get the last ip
LASTIP=`cat $LASTIPFILE`


if [ "$IP" != "$LASTIP" ]; then
# output message
echo "IP changed, new IP $IP";
$SCRIPT_PATH/spdnsupdate_beta.sh
$SCRIPT_PATH/spdnsupdate_piholevpn.sh

# append ip to logfile
echo `/bin/date +%Y%m%d_%H%M%S` $IP >> $LOGFILE
# remember current ip until next check
echo $IP > $LASTIPFILE
fi
