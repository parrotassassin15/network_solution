#!/bin/bash

#this script is meant to install the firmware for wlan0 wifi card

echo "PLZ MAKE SURE SECURE BOOT IS DISABLED IN YOUR BIOS"
sleep 5
#installs depencies
sudo apt install bc module-assistant build-essential dkms
sudo apt-get install --reinstall git dkms build-essential linux-headers-$(uname -r)
#clones the realtek firmware
sudo git clone https://github.com/tomaspinho/rtl8821ce.git
cd rtl8821ce/
sudo m-a prepare
sudo ./dkms-install.sh
clear && echo "you may now reboot!"
echo "hint: you may need to reboot a few times"
