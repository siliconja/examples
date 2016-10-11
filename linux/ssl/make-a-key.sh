#!/bin/sh

if [ "z$1" = "z" ]; then
    echo "usage: $0 <name>"
    echo " This generates a key and a certificate signing request."
    echo " <name>.key and <name>.csr files will be generated, with CN=<name>"
    exit 1;
fi

subj="/C=US/ST=WA/O=core-dev/CN=$1"

openssl req -days 3650 -subj $subj -nodes -new -keyout $1.key -out $1.csr -config openssl.cnf
