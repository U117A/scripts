#!/data/data/com.termux/files/usr/bin/bash

id=5

done=(`cat done`)

echo $id

if [ $id != $done ]; then
   echo "update"
   pkg install -y python
   echo $id > done
fi
