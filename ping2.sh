#!/bin/bash

 while [ 1=1 ]
 do
    sudo rm -rf *.st
    file=$(date +"%d%m%Y%H%M%S")
    sudo touch "$file".st
    #echo "$file"
    sleep 10
 done 
