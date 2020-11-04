#!/bin/bash

STRING="$@"

echo "STRING=$STRING"

if [[ $STRING =~ ^FOO=(.*) ]]; then
    echo "match"
    echo "value for FOO is '${BASH_REMATCH[1]}'"
else
    echo "mismatch"
fi


if [[ $STRING =~ ^FOO=([0-9]+) ]]; then
    echo "numeric value for FOO is '${BASH_REMATCH[1]}'"
else
    echo "numeric mismatch"
fi

