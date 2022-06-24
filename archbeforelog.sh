#!/bin/bash

#Creating backup for mirror list

cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak

#updating arch

pacman -Syy

#installing reflector

pacman -S reflector

#selecting  the local mirror

reflector -c $1 -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist
#mounting partition
mount /dev/sda1 /mnt/
#installing basics
pacstrap /mnt base linux linux-firmware vim git
#Configure installed arch system
genfstab -U /mnt >> /mnt/etc/fstab
#log to new arch
arch-chroot /mnt




