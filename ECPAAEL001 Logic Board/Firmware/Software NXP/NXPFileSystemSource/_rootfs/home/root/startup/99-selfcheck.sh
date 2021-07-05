#!/bin/sh

OUTPUT=/tmp/selfcheck.log
echo "" > $OUTPUT

# --- check SPI ---

ECSPI1_REGS=$(/unit_tests/memtool 0x303301F4 4 | sed -n 4p)
ECSPI2_REGS=$(/unit_tests/memtool 0x30330204 4 | sed -n 4p)
echo "ECSPI1 Registers : "$ECSPI1_REGS >> $OUTPUT
echo "ECSPI2 Registers : "$ECSPI2_REGS >> $OUTPUT
echo "" >> $OUTPUT

# --- check GPIO ---

GPIO1_REGS=$(/unit_tests/memtool 0x3033002C 1 | sed -n 4p)
GPIO3_REGS=$(/unit_tests/memtool 0x30330034 1 | sed -n 4p)
GPIO15_REGS=$(/unit_tests/memtool 0x30330064 1 | sed -n 4p)
GPIO6_REGS=$(/unit_tests/memtool 0x30330040 1 | sed -n 4p)
GPIO12_REGS=$(/unit_tests/memtool 0x30330058 1 | sed -n 4p)
echo "GPIO1 MUX Registers : "$GPIO1_REGS >> $OUTPUT
echo "GPIO3 MUX Registers : "$GPIO3_REGS >> $OUTPUT
echo "GPIO15 MUX Registers : "$GPIO15_REGS >> $OUTPUT
echo "GPIO6 MUX Registers : "$GPIO6_REGS >> $OUTPUT
echo "GPIO12 MUX Registers : "$GPIO12_REGS >> $OUTPUT
echo "" >> $OUTPUT

for N in 1 3 15 6 12; do
        if [ -d /sys/class/gpio/gpio$N ]; then
                DIR=$(cat /sys/class/gpio/gpio$N/direction)
                VAL=$(cat /sys/class/gpio/gpio$N/value)
                echo "GPIO "$N" direction = "$DIR"  value = "$VAL >> $OUTPUT
        else
                echo "GPIO "$N" NOT found" >> $OUTPUT
        fi
done
echo "" >> $OUTPUT

# --- check IP ---

ETH0_IP=$( ip -o -4 address show label eth0 | sed -n '/:/,//{/inet/{s_/.*__;s/^.* //;p;q;};}' )
ETH1_IP=$( ip -o -4 address show label eth1 | sed -n '/:/,//{/inet/{s_/.*__;s/^.* //;p;q;};}' )
USB0_IP=$( ip -o -4 address show label usb0 | sed -n '/:/,//{/inet/{s_/.*__;s/^.* //;p;q;};}' )
echo "external   (eth0) : "$ETH0_IP >> $OUTPUT
echo "internal   (eth1) : "$ETH1_IP >> $OUTPUT
echo "eth on usb (usb0) : "$USB0_IP >> $OUTPUT

echo "" >> $OUTPUT