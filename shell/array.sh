#!/bin/bash

myarray=("foo" "bar" "baz")

i=2
echo "myarray[] = ${myarray[*]}"
echo "myarray[1] = ${myarray[1]}"
echo "myarray[$i] = ${myarray[$i]}"

echo "for loop:"
for v in ${myarray[*]} ; do
  echo "  value: $v"
done

myarray2_input="foo bar baz"
read -r -a myarray2 <<< "$myarray2_input"

echo "myarray2[] = ${myarray2[*]}"
echo "myarray2[1] = ${myarray2[1]}"

