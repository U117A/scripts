#!/bin/bash

sudo apt install samba
chmod 777 /home/

sudo ./teste >> /etc/samba/smb.conf

sudo /etc/init.d/samba-ad-dc restart
