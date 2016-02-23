#!/bin/sh
#
# for csr 4.0 and AirLocate on iphone:
# bluez-ibeacon 500 E2C56DB5DFFB48D2B060D0F5A71096E0 1 12 -45
#
# Hit ctrl-c to stop it or kill -INT pid
#

#export UUID="E2C56DB5DFFB48D2B060D0F5A71096E0"
# 0號機
export UUID="0FDDEC8B6A17467E94E157EAC571D270"
# 1號機
export UUID="DEFE84E391AA464EA0B86B87736DBE31"
export MAJOR="1"
export MINOR="91"
export POWER="-45"
export ADTIME="500"

echo "Launching virtual iBeacon..."
/usr/local/bin/hciconfig hci0 up
/root/bin/bluez-ibeacon $ADTIME $UUID $MAJOR $MINOR $POWER
echo "Complete"
