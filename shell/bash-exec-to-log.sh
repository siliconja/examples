#!/bin/bash
logfile=$$.log
exec > $logfile 2>&1

set -x
echo "Hello world"

uname -a

echo "done"
