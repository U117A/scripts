#!/data/data/com.termux/files/usr/bin/bash

vs=10

done=(`cat /data/data/com.termux/files/home/done`)

if [ $vs -gt $done ]; then
   $vs > done
fi
