#!/bin/bash


if [ "$1" = "foo" -a "$2" = "bar" ]; then
    echo "yes foobar"
else
    echo "nope"
fi

echo "syntax2:"
if [ "$1" = "foo" ] && [ "$2" = "bar" ]; then
    echo "yes foobar"
else
    echo "nope"
fi
