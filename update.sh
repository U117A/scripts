#!/data/data/com.termux/files/usr/bin/bash

id=13

done=(`cat done`)

if [ $id != $done ]; then
   echo "update"
   pkg install -y samba && echo $id > done && echo "update ok"
fi
