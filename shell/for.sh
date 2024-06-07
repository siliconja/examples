#!/bin/bash

list="a b c d e"

i=0
for item in $list; do
    echo "$i: $item"
    let i=i+1
done


for j in {0..5}; do
    echo "j=$j"
done

myfunc() {
  local _arg1="$1"
  local _arg2="$2"

  echo "1=$_arg1"
  echo "2=$_arg2"

  local i
  for i in $_arg1 ; do
    echo "loop i=$i"
  done
}

echo "begin"

myfunc "wlan0 mlan0" 30

echo "end"
