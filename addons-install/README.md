Installation scripts for optional supporting packages on Raspberry Pi
=====================================================================

This directory contains scripts to install supporting packages the
[REX Control System](https://www.rexcontrols.com/rex) might rely on, depending
on your project. These packages are optional, install them only if necessary. 

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

    - If you need to exchange data with MySQL database, run

        ```
        sudo bash odbc-mysql.sh
        ```

## Documentation and support##
- [Complete documentation of the REX Control System](http://www.rexcontrols.com/documentation-and-support)
- [REX Control System community forum](https://www.rexcontrols.com/forum)  

## Additional information##
- Raspberry Pi is a trademark of the [Raspberry Pi Foundation](http://www.raspberrypi.org).
