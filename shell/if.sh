#!/bin/bash

if fgrep -q foo bar.txt ; then
    echo true
else
    echo false
fi

if [ "a$1" = "a" ]; then
  echo "no parameters"
elif [ "$1" = "test" ]; then
  echo "test!"
else
  echo "try again"
fi

