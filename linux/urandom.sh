#!/bin/bash
# random alphanumeric characters
tr -dc A-Za-z0-9 </dev/urandom | head -c 30
