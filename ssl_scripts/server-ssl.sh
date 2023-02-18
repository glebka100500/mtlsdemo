#!/bin/bash

openssl req -newkey rsa:4096 -keyout ../keys/server-key.pem -out server.csr -nodes
openssl x509 -req -in server.csr -CA ../certificates/ca-cert.pem -CAkey ../keys/ca-key.pem -CAcreateserial -out ../certificates/server.pem
rm server.csr