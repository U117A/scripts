#!/data/data/com.termux/files/usr/bin/bash

id=6

done=(`cat done`)

if [ $id != $done ]; then
   echo "update"
   pkg install -y git
   echo $id > done
fi
