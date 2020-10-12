#!/bin/bash

export TZ=America/Sao_Paulo

sudo rm -rf .ssh/known_hosts

echo
echo 'Lendo lista de contas...'

gcloud auth list --format="value(account)" > contas.txt
lista=( `cat "contas.txt" `)

i=1

for conta in "${lista[@]}"
 do
   echo $conta
   tmux new -s 'T-'$i -d "./gSSH.sh '$conta'"
   let "i++"
   sleep 5
done
