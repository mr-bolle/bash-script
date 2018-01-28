#!/bin/bash
# Quelle: http://my5cent.spdns.de/de/comment/64#comment-64
# spdns.de | spdyn.de external ip update script

# spdns host vars
# Hier Host und Token eintragen:
dns_host="dynDNS-spdyn.de"
dns_token="xxxx-holf-xxxx"

# define response file (derived from script file)
response_file="$(readlink -f $0).response"

# get external ip
external_ip=`wget "http://checkip4.spdns.de" -O "-" --quiet`

# send update request
spdns_response=`wget --user=$dns_host --password=$dns_token "https://update.spdns.de/nic/update?hostname=$dns_host&myip=$external_ip" -O "-" --quiet`

# display response
#[[ ! "`/usr/bin/tty`" == "not a tty" ]] &amp;&amp; echo ""
#[[ ! "`/usr/bin/tty`" == "not a tty" ]] &amp;&amp; echo "spdns update response: $spdns_response"
#[[ ! "`/usr/bin/tty`" == "not a tty" ]] &amp;&amp; echo ""

echo ""
echo "spdns update response: $spdns_response"
echo ""

# save result into file
echo $spdns_response
echo $response_file

# done
exit 0
