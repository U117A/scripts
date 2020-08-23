
#!/bin/bash

#sleep 180
codigo_old="$( cat codigo )"
codigo="$codigo_old"

while [ "$codigo_old" = "$codigo" ]
do
sudo rm -rf codigo
sudo wget https://raw.githubusercontent.com/U117A/scripts/master/codigo --quiet
codigo=$( cat codigo )
sleep 5
done

echo $codigo >> codigo.hist
echo -e "$codigo\n"
