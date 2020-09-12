#!/bin/bash

sudo apt install samba
chmod 777 /home/

[publico]
path = /home/
public = yes
writable = yes
comment = smb share
printable = no
guest ok = yes

>> /etc/samba/smb.conf

sudo /etc/init.d/samba-ad-dc restart
