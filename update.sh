#!/data/data/com.termux/files/usr/bin/bash

id=8

done=(`cat done`)

if [ $id != $done ]; then
   echo "update"
   pkg install -y uuid && echo $id > done && echo "update ok"
fi
