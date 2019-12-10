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

if [ ! -d /etc/foo ] && [ ! -d /etc/bar ]; then
  echo "missing foo and bar!"
fi

if [ "$1" = "foo" -o "$1" = "bar" ]; then
  echo "condition met"
else
  echo "false"
fi
