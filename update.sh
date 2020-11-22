#!/data/data/com.termux/files/usr/bin/bash

id=11

done=(`cat done`)

if [ $id != $done ]; then
   echo "update"
   pkg install -y unzip && echo $id > done && echo "update ok"
fi
