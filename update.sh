#!/data/data/com.termux/files/usr/bin/bash

vs=10

done=(`cat done`)

if [ $vs -gt $done ]; then
   
   $vs > done
fi
