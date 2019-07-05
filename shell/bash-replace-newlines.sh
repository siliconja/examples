#!/bin/bash

data=$'\none two\nthree\t\nfour'

echo "--- data:"
echo "$data"
echo "---"

clean="${data//[$'\n']}"

echo "--- clean:"
echo "$clean"
echo "---"
