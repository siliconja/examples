#!/bin/sh

# echo each command
set -x

echo "test"

# exit on error
set -e

# this line is error
test 3 3

# this line is unreached
echo "end"
