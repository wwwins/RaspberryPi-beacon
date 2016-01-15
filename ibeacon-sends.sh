#!/bin/sh
#
# for csr 4.0 and AirLocate on iphone:
# bluez-ibeacon 500 E2C56DB5DFFB48D2B060D0F5A71096E0 1 12 -45
#
# Hit ctrl-c to stop it or kill -INT pid
#

export UUID="E2C56DB5DFFB48D2B060D0F5A71096E0"
export MAJOR="1"
export MINOR="99"
export POWER="-45"
export ADTIME="500"

echo "Launching virtual iBeacon..."
/root/bin/bluez-ibeacon $ADTIME $UUID $MAJOR $MINOR $POWER 
echo "Complete"


