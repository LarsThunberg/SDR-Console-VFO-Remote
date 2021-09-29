# SDR-Console-VFO-Remote
Control VFO in SDR Console with Autohotkey and Unified Remote

# Desciption
In [SDR Console v3](https://www.sdr-radio.com/) it is possible to control an external radio for transmitting (TX) in the satellite mode - this is called External Radio control. To change frequency you can click on the digits in the control window or change with the arrow keys, but it is not possible to use any other shortcut keys or VFO knobs.

This solutions adds a [AutoHotKey](https://www.autohotkey.com/) script for remapping and controlling both RX and TX VFO and a software remote VFO with the help of [Unified Remote](https://www.unifiedremote.com/) software. You can use these independent - but best is together. If you only use the AutoHotKey script then you can toggle between the RX VFO and External Radio TX VFO and control with the arrow keys. If you only use the Unified Remote you can control the RX VFO but not switch to the External Radio TX VFO. See more in How to use below.

# Installation and setup
**Note!** Instructions are for Windows and Android but can be used for other platforms if changing the folder path.
## Install and setup AutoHotKey script
1. Download and install [AutoHotKey](https://www.autohotkey.com/)
2. Copy the script `SDRConsoleVFOControl.ahk` to a folder of your choice.
3. Edit the two lines with `IfWinActive, Airspy Mini :: SDR Console v3.1`. Replace the name "Airspy Mini :: SDR Console v3.1" if you are using another SDR. The window name has to be exact - if not the script will not find correct window.
4. In some cases you need to start the script with Windows Admin righs (right click on the script and choose "Run as administrator").

## Install and setup Unified Remote server and the app remote
1. Download and install [Unified Remote](https://www.unifiedremote.com/)
2. Check that the Unified Server is running. Please see the help files and wiki at the Unified webpage for all info about the software.
3. Copy the folder `SDR Console VFO Remote` to `C:\ProgramData\Unified Remote\Remotes\Custom`
4. Start the Unified Server Manager. Go to "Settings -> Remotes". Change the Local Path to `C:\ProgramData\Unified Remote\Remotes\` to be able to load the added remote.
5. Restart the server to load the added remote.
6. ToDo  describe app installation



![Remote_menu](https://user-images.githubusercontent.com/35871385/135282917-f4751ff2-642c-4f3f-935c-5a2e1ffb14fd.png)


# How to use
xx


![Remote_finished](https://user-images.githubusercontent.com/35871385/135282874-b7fe2cc7-b90d-4cea-b87b-4599c0d42402.png)

# Known limitations
It seems that the arrow keys from the app remote does not work in the SDR Console Satellites External Radio windows. Use the keyboard arrow keys if needed.

# Demo
Short animated GIF from adjustning the VFOs in SDR Console:

![SDRConsoleVFORemoteDemo](https://user-images.githubusercontent.com/35871385/135272134-6aadc878-89d8-47d5-9e24-6073ed6f99ea.gif)
