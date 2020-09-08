#!/bin/bash
export TZ=America/Sao_Paulo
echo "$(pwd)" > home.file
wget https://raw.githubusercontent.com/U117A/scripts/master/.customize_environment
echo $(date +"%d-%m-%Y_%H:%M:%S") >> customize_environment.log
rm -rf install.sh
wget https://raw.githubusercontent.com/U117A/scripts/master/install.sh
wget https://raw.githubusercontent.com/U117A/scripts/master/cpu_usage.sh
chmod 777 install.sh
chmod 777 cpu_usage.sh
sudo ./install.sh
