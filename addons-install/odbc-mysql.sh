#!/bin/bash
echo ' '
echo '    Installation of ODBC driver for MySQL database    '
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
echo Installing ODBC driver
apt-get install unixodbc libmyodbc rex-dbdrvt
ODBCCONFIG="/etc/odbcinst.ini"
echo '[MySQL]' >> $ODBCCONFIG
echo 'Description = MySQL driver' >> $ODBCCONFIG
echo 'Driver = /usr/lib/arm-linux-gnueabihf/odbc/libmyodbc.so' >> $ODBCCONFIG
echo 'Setup = /usr/lib/arm-linux-gnueabihf/odbc/libodbcmyS.so' >> $ODBCCONFIG

echo ' '
echo 'ODBC driver for MySQL database was installed.'
echo ' '
