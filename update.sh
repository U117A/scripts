#!/data/data/com.termux/files/usr/bin/bash

id=3

done=(`cat done`)

echo $id

if [ $id != $done ]; then
   echo "update"
   pkg install uuid
   echo $id > done
else
   echo "bypass"
fi
