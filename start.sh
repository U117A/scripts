#!/bin/bash
echo "$(pwd)" > home.file
if [ -e ".customize_environment" ]; then
   rm -rf .customize_environment
fi
wget https://raw.githubusercontent.com/U117A/scripts/master/.customize_environment
touch "$(date +"%d%m%Y%H%M%S")".customize_environment
rm -rf install.sh
wget https://raw.githubusercontent.com/U117A/scripts/master/install.sh
chmod u+x install.sh
