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

myarray2="foo bar baz"

echo "myarray2[] = ${myarray2[*]}"
echo "myarray2[1] = ${myarray2[1]}"

