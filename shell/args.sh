#!/bin/bash
echo "num args: $#"
i=0
for a in $@ ; do
    i=$((i+1))
    echo "arg $i: $a"
done
