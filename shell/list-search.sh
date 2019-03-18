#!/bin/bash

contains() {
    [[ $1 =~ (^|[[:space:]])$2($|[[:space:]]) ]] && echo 'yes' || echo 'no'
}

list="foo bar baz"

exists=$(contains "$list" foo)
echo "list contains 'foo'=$exists"

exists=$(contains "$list" bat)
echo "list contains 'bat'=$exists"

