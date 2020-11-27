#!/data/data/com.termux/files/usr/bin/bash

vs=10

done=(`cat /data/data/com.termux/files/home/done`)

echo "vs:"$vs
echo "done:"$done

if [ $vs -gt $done ]; then
     echo "update"
     $vs > done
fi
