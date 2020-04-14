#!/bin/bash

list="a b c d e"

i=0
for item in $list; do
    echo "$i: $item"
    let i=i+1
done
