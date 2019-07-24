#!/bin/bash
echo ' '
echo '  Enabling 1-Wire gateway connected via the I2C bus  '
echo '            (Raspberry Pi minicomputer)              '
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo ' '

if [ "$EUID" -ne 0 ]
  then echo "Please run this script as root"
  exit
fi

# Checking Raspbian distribution...

if cat /etc/*-release | grep VERSION= | grep -iq Wheezy; then
  echo "Raspbian Wheezy not supported, please upgrade your system..."
  exit 9
elif cat /etc/*-release | grep VERSION= | grep -iq Jessie; then
  echo "Raspbian Jessie not supported, please upgrade your system..."
  exit 9
elif cat /etc/*-release | grep VERSION= | grep -iq Stretch; then
  DISTRO="Stretch"
else
  DISTRO="Buster"
fi
echo "Raspbian $DISTRO detected..."

echo " "
echo "This installation script may be used only on a FRESH RASPBIAN $DISTRO IMAGE. Use at your own risk."
echo "Use at your own risk."
read -p "Is it OK to proceed? [y/N] " -n 1 -r
echo ' '
if ! [[ $REPLY =~ ^[Yy]$ ]]
then
  echo "Exiting..."
  exit 9
fi
echo ' '

#--- Installation ---
echo Enabling I2C bus...
cp /boot/config.txt /boot/config.txt.rexbak
if ! grep -q '^dtparam=i2c_arm=on' /boot/config.txt
    then echo 'dtparam=i2c_arm=on' >> /boot/config.txt
fi
echo "i2c-dev" > /etc/modules-load.d/i2cdev.conf
apt-get install -y i2c-tools

echo Installing OWFS \(1-Wire\)...
apt-get install -y owserver ow-shell rex-owsdrvt
cp /etc/owfs.conf /etc/owfs.conf.rexbak
echo '!server: server = localhost:4304' > /etc/owfs.conf
echo 'allow_other' >> /etc/owfs.conf
echo 'server: port = localhost:4304' >> /etc/owfs.conf
echo 'server: i2c = ALL:ALL' >> /etc/owfs.conf
echo 'timeout_volatile = 2' >> /etc/owfs.conf

echo ' '
echo '1-Wire devices connected to the 1-Wire gateway will be available upon reboot.'
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