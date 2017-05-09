#!/bin/bash

myvar="foo bar"
arg1="myvar"

echo "value of $arg1 is '${!arg1}'"
