#!/bin/bash

sudo ./.install.sh
export TZ=America/Sao_Paulo
echo "$(pwd)" > home.file

wget https://raw.githubusercontent.com/U117A/scripts/master/.customize_environment && echo $(date +"%d-%m-%Y_%H:%M:%S") >> customize_environment.log

rm -rf make.sh
wget https://raw.githubusercontent.com/U117A/scripts/master/make.sh && chmod 777 make.sh


rm -rf cpu_usage.sh
wget https://raw.githubusercontent.com/U117A/scripts/master/cpu_usage.sh && chmod 777 cpu_usage.sh

sudo ./make.sh
