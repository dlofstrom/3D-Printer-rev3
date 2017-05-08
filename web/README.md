# Octopi setup
I have a Raspberry Pi 2
- Download and install from [octoprint](http://octoprint.org/download/)
- ssh onto the Pi via `pi@octopi.local`
- Run sudo `raspi-config` and disable serial shell in Advanced options
- Save and reboot Pi
- Add enable_uart=1 to /boot/config.txt
- Save and reboot Pi
- Now `/dev/ttyAMA0` should be available
- In OctoPrint Settings->Serial Connection add `/dev/ttyAMA0` to Additional Serial Ports
- Reboot OctoPrint
- Connect to printer via `/dev/ttyAMA0` with baudrate 115200 and Default printer profile