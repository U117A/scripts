#!/data/data/com.termux/files/usr/bin/bash

id=9

done=(`cat done`)

if [ $id != $done ]; then
   echo "update"
   pkg install -y tmate && echo $id > done && echo "update ok"
fi
