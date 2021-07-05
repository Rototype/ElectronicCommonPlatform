#!/bin/sh

echo "Reset Spartan7 FPGA"
echo 0 > /sys/class/gpio/gpio1/value
echo 1 > /sys/class/gpio/gpio15/value
echo 1 > /sys/class/gpio/gpio1/value

counter=0
while [ $(cat /sys/class/gpio/gpio12/value) -eq 0 ]
do
  sleep 0.1
  let counter++
  if [ $counter -eq 100 ]; then
    echo "Spartan7 FPGA Timed Out"
    exit 0
  fi
done

echo "Spartan7 FPGA OK"
