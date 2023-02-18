#!/bin/bash

openssl req -newkey rsa:4096 -keyout client-key.pem -nodes -out client.csr -nodes
openssl x509 -req -in client.csr -CA ca-cert.pem -CAkey ca-key.pem -CAcreateserial -out ../certificates/client.pem
rm client.csr
