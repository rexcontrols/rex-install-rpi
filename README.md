Installing the REX Control System runtime modules on Raspberry Pi
=================================================================

The [REX Control System](https://www.rexcontrols.com/rex) is a family of
software products for automation projects. You can use it in all fields of
automation, robotics, measurements and feedback control.

By installing runtime modules of the [REX Control System](https://www.rexcontrols.com/rex)
on your Raspberry Pi minicomputer you turn it into a universal control unit. Or
a soft-PLC if you prefer the industrial control terminology. [Learn more...](https://www.rexcontrols.com/rex)

## Installation instructions ##
- On your Raspberry Pi, install GIT

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
- Start programming your Raspberry Pi using the [development tools of the REX Control System](https://www.rexcontrols.com/development-tools)

## Documentation and support##
- [Getting started with REX and Raspberry Pi](https://www.rexcontrols.com/media/2.50.1/doc/PDF/ENGLISH/RexGettingStarted_RasPi_ENG.pdf)
- [Getting started with REX and Monarco HAT](https://www.rexcontrols.com/media/2.50.1/doc/PDF/ENGLISH/RexGettingStarted_MonarcoHAT_RPi_ENG.pdf)
- [Getting started with REX and UniPi board](https://www.rexcontrols.com/media/2.50.1/doc/PDF/ENGLISH/RexGettingStarted_UniPi_ENG.pdf)
- [Complete documentation of the REX Control System](https://www.rexcontrols.com/documentation-and-support)
- [REX Control System community forum](https://www.rexcontrols.com/forum)  

## Additional information##
- More information about the Monarco HAT can be found at [monarco.io](http://www.monarco.io).
- More information about the UniPi board can be found at [unipi.technology](http://www.unipi.technology).
- Raspberry Pi is a trademark of the [Raspberry Pi Foundation](http://www.raspberrypi.org).
