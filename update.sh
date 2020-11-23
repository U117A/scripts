#!/data/data/com.termux/files/usr/bin/bash

vs=10

done=(`cat done`)

if [ $vs -gt $done ]; then
   #rm -rf nohup.out
   echo "update"
   pkg install -y openssl* && echo $vs > done && echo "update ok"
fi
