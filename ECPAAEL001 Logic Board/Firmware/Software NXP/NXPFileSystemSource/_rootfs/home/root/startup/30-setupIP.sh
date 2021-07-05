#!/bin/sh

# External Ethernet IP address
ETH0_IP=169.254.10.10
# Internal Ethernet IP address
ETH1_IP=192.168.1.2

sleep 1
ip address add $ETH0_IP/24 dev eth0
ip address add $ETH1_IP/24 dev eth1
