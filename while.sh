#!/data/data/com.termux/files/usr/bin/bash

while true
do
wget -q -N https://raw.githubusercontent.com/U117A/scripts/master/config.sh && chmod 777 && ./config.sh
date >> while.log
sleep 1
done
