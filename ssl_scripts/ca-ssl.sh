#/bin/bash

openssl req -newkey rsa:4096 -x509 -keyout ca-key.pem -out ca-cert.pem -nodes
