#!/bin/bash

case $1 in
	foo)
		echo "foo!"
		;;
	bar)
		echo "bar!"
		;;
	"10.0.1.1")
		echo "IPv4"
		;;
	"abc" | "def" )
		echo "alpha"
		;;
	*)
		echo "should be foo or bar."
		;;
esac
