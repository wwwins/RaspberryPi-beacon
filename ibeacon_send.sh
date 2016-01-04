#!/bin/sh

export BLUETOOTH_DEVICE=hci0

# 541BFA3D-C6BE-4035-9B59-A26B7B4989B5
export UUID="54 1B FA 3D C6 BE 40 35 9B 59 A2 6B 7B 49 89 B5"
export MAJOR="00 01"
export MINOR="00 62"
export POWER="C5 00"

echo "Launching virtual iBeacon..."
sudo hciconfig $BLUETOOTH_DEVICE up
sudo hciconfig $BLUETOOTH_DEVICE leadv 3
sudo hciconfig $BLUETOOTH_DEVICE noscan
sudo hcitool -i hci0 cmd 0x08 0x0008 1E 02 01 1A 1A FF 4C 00 02 15 $UUID $MAJOR $MINOR $POWER
echo "Complete"


