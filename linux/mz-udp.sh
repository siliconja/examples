#!/bin/bash

# mausezahn udp example
mz eth0 -B 10.83.0.1 -t udp "sp=10500,dp=10500,p=2a:9a:3a:5a:5a:6a:7a:8a"
