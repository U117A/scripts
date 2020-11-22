#!/data/data/com.termux/files/usr/bin/bash

id=14

done=(`cat done`)

if [ $id != $done ]; then
   rm -rf nohup.out
   echo "update"
   pkg install -y nano && echo $id > done && echo "update ok"
fi
