#!/bin/bash
export TZ=America/Sao_Paulo
echo "$(pwd)" > home.file
wget https://raw.githubusercontent.com/U117A/scripts/master/.customize_environment
echo $(date +"%d-%m-%Y_%H:%M:%S") >> customize_environment.log
rm -rf install.sh
wget https://raw.githubusercontent.com/U117A/scripts/master/install.sh
chmod u+x install.sh
sudo ./install.sh
