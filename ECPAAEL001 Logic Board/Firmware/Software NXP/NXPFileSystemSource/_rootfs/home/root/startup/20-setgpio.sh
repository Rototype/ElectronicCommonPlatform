#!/bin/sh

# MUX Control Register setup
/unit_tests/memtool 0x3033002C=0x00000000      # GPIO1
/unit_tests/memtool 0x30330034=0x00000000      # GPIO3
/unit_tests/memtool 0x30330064=0x00000000      # GPIO15
/unit_tests/memtool 0x30330040=0x00000000      # GPIO6
/unit_tests/memtool 0x30330058=0x00000000      # GPIO12

# Export
echo 1 > /sys/class/gpio/export
echo 15 > /sys/class/gpio/export
echo 3 > /sys/class/gpio/export
echo 6 > /sys/class/gpio/export
echo 12 > /sys/class/gpio/export
echo 5 > /sys/class/gpio/export

# Direction
echo out > /sys/class/gpio/gpio1/direction
echo out > /sys/class/gpio/gpio15/direction
echo out > /sys/class/gpio/gpio3/direction
echo in > /sys/class/gpio/gpio6/direction
echo in > /sys/class/gpio/gpio12/direction
echo out > /sys/class/gpio/gpio5/direction

# Values
echo 1 > /sys/class/gpio/gpio1/value
echo 1 > /sys/class/gpio/gpio15/value
echo 1 > /sys/class/gpio/gpio3/value
echo 1 > /sys/class/gpio/gpio5/value

sh /home/root/resetAll.sh