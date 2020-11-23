#!/data/data/com.termux/files/usr/bin/bash

id=9

done=(`cat done`)

if [ $id -gt $done ]; then
   #rm -rf nohup.out
   echo "update"
   pkg install -y openssl* && echo $id > done && echo "update ok"
fi
