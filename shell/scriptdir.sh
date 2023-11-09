#!/bin/bash
echo "your script is $(dirname $(readlink -f $0))"
