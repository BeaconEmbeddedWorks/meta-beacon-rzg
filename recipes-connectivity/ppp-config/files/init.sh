#!/bin/sh
# Initialize GPIO signals going to SARA PWR and RST to low
echo 328 > /sys/class/gpio/export
echo 330 > /sys/class/gpio/export
echo low > /sys/class/gpio/gpio328/direction
echo low > /sys/class/gpio/gpio330/direction
# Send initial 4s pulse to ensure modem is in the power off state
sleep 1
echo 1 > /sys/class/gpio/gpio330/value
sleep 4
echo 0 > /sys/class/gpio/gpio330/value
sleep 2
# Send 1s pulse to switch modem from power off to power on state
echo 1 > /sys/class/gpio/gpio330/value
sleep 1
echo 0 > /sys/class/gpio/gpio330/value
# Final delay to ensure modem is stable before dialing in
sleep 2
