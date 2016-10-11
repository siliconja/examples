#!/bin/sh

# generate key pair
echo "generating CA key pair..."
#openssl genrsa -des3 -out root-ca.key 1024
openssl genrsa -out root-ca.key 1024

# create new self-signed X.509 certificate
echo "generating new self-signed CA cert..."
openssl req -new -x509 -key root-ca.key -out ca-cert.pem -days 3650 -config openssl.cnf

echo "displaying cert:"
openssl x509 -noout -text -in ca-cert.pem
