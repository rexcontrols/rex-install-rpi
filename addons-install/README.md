Installation scripts for optional supporting packages on Raspberry Pi
=====================================================================

This directory contains scripts to install supporting packages for [REXYGEN Runtime Core](https://www.rexygen.com). These packages are optional, install them only if necessary. 

## Installation instructions ##
- On your Raspberry Pi, go to the addons-install directory

    ```
    cd addons-install
    ```

- Run any of the following scripts as necessary:
    - If you are using 1-Wire temperature sensors connected directly to GPIO#4
    on your Raspberry Pi, run

        ```
        sudo bash onewire-gpio.sh
        ```

    - If you are using 1-Wire gateway connected via the I2C bus on your 
    Raspberry Pi, run

        ```
        sudo bash onewire-i2c.sh
        ```

    - If you are using 1-Wire gateway connected to USB on your 
    Raspberry Pi, run

        ```
        sudo bash onewire-usb.sh
        ```

    - If you need to enable the I2C bus on your 
    Raspberry Pi, run

        ```
        sudo bash enable-i2c.sh
        ```

## Documentation and support##
- [Complete documentation of REXYGEN](https://www.rexygen.com/documentation-and-support/)
- [REXYGEN Community forum](https://forum.rexygen.com)  

## Additional information##
- Raspberry Pi is a trademark of the [Raspberry Pi Foundation](http://www.raspberrypi.org).
