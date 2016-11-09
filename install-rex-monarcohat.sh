#!/bin/bash
echo ' '
echo 'Installer of the REX Control System runtime components'
echo '      for Raspberry Pi with the Monarco HAT           '
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo ' '

ROOT=$(dirname $(readlink -f $0))

if [ "$EUID" -ne 0 ]
  then echo "Please run this script as root"
  exit
fi

#--- Kernel version check ---
kernelget() {
    kver=$(uname -r|cut -d\- -f1|tr -d '+'| tr -d '[A-Z][a-z]')
    #echo "Version '$1 $kver'"
    if [[ $1 == $kver ]]
    then
        return 1
    fi
    local IFS=.
    local i ver1=($1) ver2=($kver)
    # fill empty fields in ver1 with zeros
    for ((i=${#ver1[@]}; i<${#ver2[@]}; i++))
    do
        ver1[i]=0
    done
    for ((i=0; i<${#ver1[@]}; i++))
    do
        if [[ -z ${ver2[i]} ]]
        then
            # fill empty fields in ver2 with zeros
            ver2[i]=0
        fi
        if ((10#${ver1[i]} > 10#${ver2[i]}))
        then
            return 1
        fi
        if ((10#${ver1[i]} < 10#${ver2[i]}))
        then
            return 0
        fi
    done
    return 1
}

if kernelget 4.4.11; then
  echo "Up to date kernel found..."
else
  echo "Obsolete kernel found. Please upgrade or install REX manually."
  exit
fi

# Install core modules
bash $ROOT/script-core

if [ $? -ne 0 ]; then
  exit
fi

# UniPi
echo ' '
echo ' Enabling onboard devices of the Monarco HAT '
echo '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
echo ' '
bash $ROOT/script-monarcohat

# Done
