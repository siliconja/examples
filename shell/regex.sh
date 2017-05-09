#!/bin/bash

test=foo

if [[ "$1" =~ "$test" ]]; then
  echo "matches test pattern"
else
  echo "doesn't match test pattern '$test'"
fi

if [[ "$1" =~ ^(foo|bar|baz) ]]; then
  res2="matches"
else
  res2="doesn't match"
fi
echo "$res2 2nd pattern (OR)"

echo "bash string replacement:"
repl=$1
repl2="${repl//o}"
# replace all matches of 'f' with 'b'
repl3="${repl//f/big}"
echo "$repl --> $repl2"
echo "$repl --> $repl3"

