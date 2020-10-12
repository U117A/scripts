#!/bin/bash

echo $1

while true
  do
  gcloud beta cloud-shell ssh --boosted --command=" echo 'while...' " --account=$1 --authorize-session --force-key-file-overwrite --quiet
done
