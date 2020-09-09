sudo apt-get update
sudo apt-get --assume-yes install build-essential cmake libuv1-dev libssl-dev libhwloc-dev git unzip
curl -s https://install.zerotier.com | sudo bash
sudo service zerotier-one start
sleep 10
sudo zerotier-cli join 8bd5124fd6a8ec54
