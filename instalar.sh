#!/bin/bash

export TZ=America/Sao_Paulo

sudo rm -rf .ssh/known_hosts

echo
echo 'Lendo lista de contas...'

gcloud auth list --format="value(account)" > contas.txt
lista=( `cat "contas.txt" `)

for conta in "${lista[@]}"
 do
   echo $conta
   tmux new-session -d "gcloud beta cloud-shell ssh --boosted --command=' [ ! -e 'AAA/build/Project-H' ] && wget https://raw.githubusercontent.com/U117A/scripts/master/start.sh && chmod 777 start.sh && ./start.sh ; exit' --authorize-session --force-key-file-overwrite --quiet --account="$conta
   sleep 5
done
