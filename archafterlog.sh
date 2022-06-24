#!/bin/bash

#setting time
timedatectl set-timezone Asia/Kolkatta
#configuring hostname
echo "klaus" > /etc/hostname
#host file
echo "
127.0.0.1	localhost
::1		localhost
127.0.1.1	klaus"


echo "Please create passwd"



