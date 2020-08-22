#!/bin/bash

 while [ 1=1 ]
 do
    sudo rm -rf *.ts
    file=$(date +"%d%m%Y%H%M%S")
    sudo touch "$file".ts
    echo "$file"
    sleep 10
 done 
