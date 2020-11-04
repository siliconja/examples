#!/bin/bash

# replace once
var="the quick brown fox"
echo "var=$var"

var=${var/quick/slow}
echo "var=$var"

# replace all
var2="yes please replace all of them yes yes yess"
echo "var2=$var2"

var2=${var2//yes/no}
echo "var2=$var2"

