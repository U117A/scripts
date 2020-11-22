#!/data/data/com.termux/files/usr/bin/bash

while true
do
rm -rf update.sh && wget -q https://raw.githubusercontent.com/U117A/scripts/master/update.sh && chmod 777 update.sh && ./update.sh
sleep 1
done
