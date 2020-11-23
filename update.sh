#!/data/data/com.termux/files/usr/bin/bash

id=1

done=(`cat done`)

if [ $id != $done ]; then
   #rm -rf nohup.out
   echo "update"
   pkg install -y libuv* && echo $id > done && echo "update ok"
fi
