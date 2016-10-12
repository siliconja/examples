#!/bin/sh

openssl x509 -noout -modulus -in $1.pem | openssl md5
openssl rsa -noout -modulus -in $1.key | openssl md5

