#!/bin/bash
echo ' '
echo 'Enabling 1-Wire temperature sensors connected to GPIO4'
echo '            (Raspberry Pi minicomputer)               '
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo ' '

if [ "$EUID" -ne 0 ]
  then echo "Please run this script as root"
  exit
fi

if cat /etc/*-release | grep VERSION= | grep -iq Wheezy; then
  echo "Raspbian Wheezy detected..."
else
  echo "Only Raspbian Wheezy is supported!"
  exit
fi

echo " "
echo "This installation script may be used only on a FRESH RASPBIAN WHEEZY IMAGE. Use at your own risk."
read -p "Is it OK to proceed? [y/N] " -n 1 -r
echo ' '
if ! [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "Exiting..."
  exit 
fi
echo ' '

#--- Installation ---
echo Enabling w1 kernel module...
cp /boot/config.txt /boot/config.txt.w1bak
echo 'dtoverlay=w1-gpio,gpiopin=4,pullup=off' >> /boot/config.txt

echo Installing OWFS \(1-Wire\)...
apt-get install -y owserver ow-shell rex-owsdrvt
cp /etc/owfs.conf /etc/owfs.conf.w1bak
echo '!server: server = localhost:4304' > /etc/owfs.conf
echo 'allow_other' >> /etc/owfs.conf
echo 'server: port = localhost:4304' >> /etc/owfs.conf
echo 'server: w1' >> /etc/owfs.conf
echo 'timeout_volatile = 2' >> /etc/owfs.conf

echo ' '
echo '1-Wire temperature sensors connected to GPIO#4 will be available upon reboot.'
echo ' '
echo '!!! REBOOT IS REQUIRED !!!'
echo ' '

read -p "Is it OK to reboot now? [y/N] " -n 1 -r
echo ' '
if [[ $REPLY =~ ^[Yy]$ ]]
then
    reboot
else
  echo 'Remember to reboot your Raspberry Pi at your earliest convenience.'
fi
echo ' '