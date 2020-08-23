#!/bin/bash
echo "$(sudo ./getcodigo.sh)" | gcloud auth login $1 -q
