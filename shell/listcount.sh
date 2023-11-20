#!/bin/bash
thelist="one two three"
echo "thelist has ${#thelist} elements"

count=0
for i in $thelist ; do
    ((count++))
done
echo "count=$count"
