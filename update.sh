#!/data/data/com.termux/files/usr/bin/bash

id=2

done=(`cat done`)

echo $id

if [ $id != $done ]; then
   echo "update"
else
   echo "bypass"
fi
