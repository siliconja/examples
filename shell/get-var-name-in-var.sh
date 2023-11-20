#!/bin/bash

foo="this is the value"
varname="foo"

echo "the variable ${varname} has value ${!varname}"

bar="baz"

method1() {
    retvar="$1"
    echo "in method1"
    eval ${retvar}="123"
}

echo "1 bar=$bar"
method1 "bar"
echo "2 bar=$bar"
