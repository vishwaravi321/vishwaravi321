#!/bin/bash

#setting time
timedatectl set-timezone Asia/Kolkata
#configuring hostname
echo "klaus" > /etc/hostname
#host file
echo "
127.0.0.1	localhost
::1		localhost
127.0.1.1	klaus" >> /etc/hosts


echo "Please create passwd"



