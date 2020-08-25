#!/bin/bash

 while [ 1=1 ]
 do
    sudo rm -rf *.while
    file=$(date +"%d%m%Y%H%M%S")
    sudo touch "$file".while
    echo $(date)
    sleep 10
 done
