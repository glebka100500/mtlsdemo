#/bin/bash

openssl req -newkey rsa:4096 -x509 -keyout ../keys/ca-key.pem -out ../certificates/ca-cert.pem -nodes
