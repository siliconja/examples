#!/bin/sh

# remove beginning-of-line match
sed -i '/^match_this=/d' file.txt
