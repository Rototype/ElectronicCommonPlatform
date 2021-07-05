#!/bin/sh

# Ethernet on USB interface IP address
USB0_IP=10.0.0.1

cd /lib/modules/4.14.98-imx-4.14.98-2.0.0-ga+g5d6cbeafb80c/kernel/drivers/usb/gadget/legacy/
insmod g_ether.ko

ip addr add $USB0_IP/24 dev usb0
ip link set usb0 up
