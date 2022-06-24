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
#adding groot user
useradd - m groot
#installing grub
pacman -Sy grub

grub-install /dev/sda
#configuring grub
grub-mkconfig -o /boot/grub/grub.cfg
#install sudo
pacman -Sy sudo
#permissions for groot
usermod -aG wheel,audio,video,storage groot
#installing networkmanager
pacman -S networkmanager 
#enabling networkmanager
systemctl enable NetworkManager.service
#mentioning other tasks
echo "Please create passwd for user groot and dont forget to configure visudo !!!!!!!!!!!!!!!"
#create password for groot
passwd groot



