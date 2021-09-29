# SDR-Console-VFO-Remote
Control VFO in SDR Console with Autohotkey and Unified Remote

# Desciption
In [SDR Console v3](https://www.sdr-radio.com/) it is possible to control an external radio for transmitting (TX) in the satellite mode - this is called External Radio control. To change frequency you can click on the digits in the control window with the mouse pointer or change with the arrow keys, but it is not possible to use any other shortcut keys or VFO knobs.

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
2. Check that the Unified Server is running. Please see the help files and wiki at the Unified webpage for all info about the software. In some cases you need to change the service to run as administrator.
3. Copy the folder `SDR Console VFO Remote` to `C:\ProgramData\Unified Remote\Remotes\Custom`
4. Start the Unified Server Manager. Go to "Settings -> Remotes". Change the Local Path to `C:\ProgramData\Unified Remote\Remotes\` to be able to load the added remote.
5. Restart the server to load the added remote.
6. Install the **Unified Remote Full** app (for iOS or Android) - it need to be the paid version to be able to use own custom remotes. The price is aprox. 5 EUR.
7. Connect the app to your server on your computer. You will then be able to add the SDR Console VFO Remote and it will pop up in the app:

![Remote_menu](https://user-images.githubusercontent.com/35871385/135282917-f4751ff2-642c-4f3f-935c-5a2e1ffb14fd.png)


# How to use
## Only Autohotkey script
1. Start SDR Console
2. Undock the External Radio in the satellite window by dragging the window out of the "big" satellite window. If not undocking the script will not work.
3. Start the script - in some cases you need to start with Windows Admin righs (right click on the script and choose "Run as administrator").
4. When hitting the Space key, the script switches between RX VFO in the main window and TX VFO in External Radio.
5. Tune up/down in frequency with the arrow keys (Up/Down/Left/Right). You can now switch fast between the VFOs and control the frequency in the same way - this is not possible when running SDR Console as standard!

## Only Unified Remote
1. Start SDR Console
2. Start the control in your mobile phone
3. Go to the RX VFO, you can now tune with the virtual VFO "knob" in the control and also with the arrow keys. The upper button has no effect in this case.

## Both Autohotkey script and Unified Remote
Now it's getting very cool!
1. Start the script and remote - see above.
2. When hitting the upper button "RX VFO / Satellite TX VFO", the script switches between RX VFO in the main window and TX VFO in External Radio.
3. Now you can tune with the virtual VFO "knob", even in the satellite external radio VFO!
4. To make the VFO go faster/slower, press the buttons FREQ X1/FREQ X2/FREQ X3.
5. In the RX VFO, you can also use the arrow buttons in the control.

![Remote_finished](https://user-images.githubusercontent.com/35871385/135282874-b7fe2cc7-b90d-4cea-b87b-4599c0d42402.png)

# Known limitations
It seems that the arrow keys from the app remote does not work in the SDR Console Satellites External Radio windows. Use the keyboard arrow keys if needed.

# Demo
Short animated GIF from adjustning the RX VFOs and satellite external radio TX VFO in SDR Console:

![SDRConsoleVFORemoteDemo](https://user-images.githubusercontent.com/35871385/135272134-6aadc878-89d8-47d5-9e24-6073ed6f99ea.gif)
