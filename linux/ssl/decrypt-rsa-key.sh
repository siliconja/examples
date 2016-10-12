#!/bin/sh

openssl rsa –in $1.key -out $1-decrypted.key

