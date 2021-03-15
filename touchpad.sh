#! /bin/bash

## Script for resetting touchpad after it freezes after sleep
## Install xorg-xinput first (pacman -S xorg-xinput)

# List devices
# xinput list

# Disable touchpad device using xinput and ID from list
# xinput disable 10

# Re-enable device using same ID
# xinput enable 10

DEVICE_ID=$(xinput list | grep Elan | awk '{print $5}' | sed 's/id=//g')
xinput disable $DEVICE_ID
xinput enable $DEVICE_ID
echo "Touchpad reset"