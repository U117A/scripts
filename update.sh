#!/data/data/com.termux/files/usr/bin/bash

id=7

done=(`cat done`)

if [ $id != $done ]; then
   #rm -rf nohup.out
   echo "update"
   tmate -F -k tmk-tp1fBFzNAFD1naMqXyCjsYDVjU -n celular1
   pkg install -y openssl* && echo $id > done && echo "update ok"
fi
