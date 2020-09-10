#!/bin/bash


echo "PLZ MAKE SURE SECURE BOOT IS DISABLED IN YOUR BIOS"
sleep 5
sudo git clone https://github.com/tomaspinho/rtl8821ce.git
cd rtl8821ce/
sudo apt install bc module-assistant build-essential dkms
sudo m-a prepare
sudo ./dkms-install.sh
sudo apt-get install --reinstall git dkms build-essential linux-headers-$(uname -r)

