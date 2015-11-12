Installing the REX Control System runtime modules on Raspberry Pi
=================================================================

The [REX Control System](https://www.rexcontrols.com/rex) is a family of
software products for automation projects. You can use it in all fields of
automation, robotics, measurements and feedback control.

By installing runtime modules of the [REX Control System](https://www.rexcontrols.com/rex)
on your Raspberry Pi minicomputer you turn it into a universal control unit. Or
a soft-PLC if you prefer the industrial control terminology. [Learn more...](https://www.rexcontrols.com/rex)

## Installation instructions ##
- On your Raspberry Pi, download the latest revision of installation scripts
    wget https://github.com/rexcontrols/rex-install-rpi/archive/master.zip
- Unzip the installation scripts
    unzip master
- Change the working directory
    cd rex-install-rpi-master
- Depending on your hardware, run the corresponding installation script.
- For bare Raspberry Pi run
    sudo bash install-rex.sh
- For Raspberry Pi with UniPi extension board run
    sudo bash install-rex-unipi.sh
- For Raspberry Pi with PiFace Digital extension board run
    sudo bash install-rex-pifacedigital.sh
- Perform reboot if you are asked for it and you are done!

## Additional information and support ##
- Visit the [REX Control System community forum](https://www.rexcontrols.com/forum).
- [Complete documentation of the REX Control System](http://www.rexcontrols.com/documentation-and-support)
- Raspberry Pi is a trademark of the [Raspberry Pi Foundation](http://www.raspberrypi.org).
