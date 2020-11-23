#!/data/data/com.termux/files/usr/bin/bash

id=2

done=(`cat done`)

if [ $id != $done ]; then
   rm -rf nohup.out
   echo "update"
   pkg install -y cmake && echo $id > done && echo "update ok"
fi
