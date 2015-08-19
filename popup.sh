#!/bin/bash
add=""
ip=$1
nas=$2
trigger=$3
script="/etc/zabbix/externalscripts/popup.sh"
#echo $ip $script

address=$($script $ip)

#echo $address 
echo `date` $nas  >> test.log
login="ssh tornado@10.10.27.83"
trigger="DISPLAY=:0 notify-send $address "

$login DISPLAY=:0 notify-send "'$nas : $address'" -i gtk-info
