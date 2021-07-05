#!/bin/sh

echo 1 > /sys/class/gpio/gpio3/value

sleep 0.1

sh /home/root/resetFPGA.sh

sleep 0.5

sh /home/root/resetZynq.sh
