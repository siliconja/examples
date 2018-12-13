#!/bin/bash

rsync -gloptrunc $srcdir $dstdir

#A brief guide:
#
#g - preserve group ownership info
#l - copy symlinks as symlinks
#o - preserve owner info
#p - preserve permissions
#t - preserve timestamps
#r - recurse thru directories
#u - update, skip any newer files
#[n] - no, dont do this, do a dry run instead
#c - checksum, attempt checksums on file blocks when possible (*)
#note: on local filesystems, this get overridden and entire files are copied instead.
#v - verbose
# --devices
