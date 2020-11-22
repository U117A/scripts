#!/data/data/com.termux/files/usr/bin/bash

id=10

done=(`cat done`)

if [ $id != $done ]; then
   echo "update"
   pkg install -y tmux && echo $id > done && echo "update ok"
fi
