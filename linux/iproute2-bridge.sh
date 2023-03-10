#!/bin/bash
ip link add name br0 type bridge
ip link set dev br0 up
ip link set dev eth0 master br0
ip link set dev eth1 master br0

# to remove
# ip link set dev eth0 nomaster
