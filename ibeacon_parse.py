#!/usr/bin/env python
# test BLE Scanning software
# jcs 6/8/2014

import blescan
import sys
import RPi.GPIO as GPIO
import bluetooth._bluetooth as bluez

# counts of messages
COUNTS_OF_MESSAGES = 16

dev_id = 0
try:
	sock = bluez.hci_open_dev(dev_id)
	print "ble thread started"

except:
	print "error accessing bluetooth device..."
    	sys.exit(1)

blescan.readBeaconList()
blescan.hci_le_set_scan_parameters(sock)
blescan.hci_enable_le_scan(sock)

try:
	while True:
		returnedList = blescan.parse_events(sock, COUNTS_OF_MESSAGES)
		print "----------"
		for beacon in returnedList:
			print beacon

finally:
	print "cleanup!!"
	GPIO.cleanup()
