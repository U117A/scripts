#!/data/data/com.termux/files/usr/bin/bash

id=2

zzz=(`cat zzz`)

echo $id

if [ $id != $done ]; then
   echo "update"
   echo $id > zzz
else
   echo "bypass"
fi
