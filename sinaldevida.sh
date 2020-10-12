#!/bin/bash

export TZ=America/Sao_Paulo

padrao="\033[0m"
verde="\033[0;32m"

command=""
#command=" ${command} [ ! -e 'AAA/build/Project-H' ] && rm -rf start.* && wget https://raw.githubusercontent.com/U117A/scripts/master/start.sh && "
#command=" ${command} chmod 777 start.sh && "
#command=" ${command} ./start.sh >> start.log ; "
command=" ${command} echo -e '"${verde}"'ON  "'$(ps -o etime= -C "Project-H")'" '"${padrao}"' ; "
command=" ${command} echo "'$(date +"%d%m%Y%H%M%S") >> log.tmux'" ; "
command=" ${command} sleep 1 ; exit"

#echo -e "$verde" "$command" "$padrao"

while true
do

 sudo rm -rf .ssh/known_hosts

 echo
 echo 'Lendo lista de contas...'
 gcloud auth list --format="value(account)" > contas.txt
 lista=( `cat "contas.txt" `)

 for conta in "${lista[@]}"
  do

  if echo "$conta" | grep -q "$1"; then

     echo
     echo $conta
     echo "$(date)"
     #gcloud config set account $conta
     gcloud beta cloud-shell ssh --boosted --command="$command" --account=$conta --authorize-session --quiet

  fi

 done

done
