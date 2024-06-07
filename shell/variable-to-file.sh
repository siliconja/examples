#!/bin/bash


var="foo bar"

echo "${var}" > /tmp/varfile.tmp

readvar=$(cat /tmp/varfile.tmp 2>/dev/null)

echo "var: $var"
echo "readvar: $var"

if [ "$var" = "$readvar" ]; then
    echo "they match"
else
    echo "no match"
fi
