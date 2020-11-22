#!/data/data/com.termux/files/usr/bin/bash

id=4

done=(`cat done`)

echo $id

if [ $id != $done ]; then
   echo "update"
   pkg install python
   echo $id > done
fi
