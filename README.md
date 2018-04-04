Installing REXYGEN runtime modules on Raspberry Pi
==================================================

[REXYGEN](https://www.rexygen.com) is a family of
software products for automation projects. You can use it in all fields of
automation, robotics, measurements and feedback control.

By installing runtime modules of [REXYGEN](https://www.rexygen.com)
on your Raspberry Pi minicomputer you turn it into a universal programmable 
automation unit. Or a soft-PLC if you prefer the industrial automation 
terminology. [Learn more...](https://www.rexygen.com)

## Installation instructions ##
- On your Raspberry Pi, install the Git version control tool

    ```
    sudo apt update
    sudo apt install git
    ```

- Go to your home directory

    ```
    cd ~
    ```

- Download the latest revision of installation scripts

    ```
    git clone https://github.com/rexcontrols/rex-install-rpi.git --branch v2.50
    ```

- Change the working directory

    ```
    cd rex-install-rpi
    ```

- Depending on your hardware, run **only one** of the following installation scripts.
    - `sudo bash install-rex.sh` (for bare Raspberry Pi)
    - `sudo bash install-rex-monarcohat.sh` (for Raspberry Pi with the Monarco HAT)
    - `sudo bash install-rex-unipi.sh` (for Raspberry Pi with UniPi extension board)
    - `sudo bash install-rex-pifacedigital.sh` (for Raspberry Pi with PiFace Digital extension board)

- Perform reboot if you are asked for it and you are done.
- Start programming your Raspberry Pi using the [REXYGEN Studio](https://www.rexygen.com/rexygen-studio/)

## Documentation and support ##
- [Getting started with REXYGEN and Raspberry Pi](https://www.rexygen.com/doc/ENGLISH/MANUALS/RexygenGettingStarted_RasPi/RexygenGettingStarted_RasPi_ENG.html)
- [Getting started with REXYGEN and Monarco HAT](https://www.rexygen.com/doc/ENGLISH/MANUALS/RexygenGettingStarted_MonarcoHAT_RPi/RexygenGettingStarted_MonarcoHAT_RPi_ENG.html)
- [Getting started with REXYGEN and UniPi board](https://www.rexygen.com/doc/ENGLISH/MANUALS/RexygenGettingStarted_UniPi/RexygenGettingStarted_UniPi_ENG.html)
- [Complete documentation of REXYGEN](https://www.rexygen.com/documentation-and-support/)
- [REXYGEN community forum](https://www.rexcontrols.com/forum)  

## Additional information ##
- More information about the Monarco HAT can be found at [monarco.io](http://www.monarco.io).
- More information about the UniPi board can be found at [unipi.technology](http://www.unipi.technology).
- Raspberry Pi is a trademark of the [Raspberry Pi Foundation](http://www.raspberrypi.org).
