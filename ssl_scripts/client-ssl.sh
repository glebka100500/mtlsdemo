#!/bin/bash

openssl req -newkey rsa:4096 -keyout ../keys/client-key.pem -nodes -out client.csr -nodes
openssl x509 -req -in client.csr -CA ../certificates/ca-cert.pem -CAkey ../keys/ca-key.pem -CAcreateserial -out ../certificates/client.pem
rm client.csr
