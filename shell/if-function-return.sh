#!/bin/bash

val=$1

do_it() {
    if [ "$1" = "100" ]; then
        echo 1
    else
        echo ""
    fi
}


if [ $(do_it $val) ]; then
    echo "true"
else
    echo "false"
fi
