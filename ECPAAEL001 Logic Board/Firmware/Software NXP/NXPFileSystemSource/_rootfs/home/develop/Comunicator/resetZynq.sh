#!/bin/sh

echo "Reset Zynq"
echo 0 > /sys/class/gpio/gpio3/value

sleep 0.1
echo 1 > /sys/class/gpio/gpio3/value

counter=0
while [ $(cat /sys/class/gpio/gpio6/value) -eq 0 ]
do
  sleep 0.1
  let counter++
  if [ $counter -eq 100 ]; then
    echo "Zynq Timed Out"
    exit 0
  fi
done
echo 1 > /sys/class/gpio/gpio3/value

echo "Zynq OK"
