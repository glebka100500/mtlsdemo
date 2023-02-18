#!/bin/zsh

openssl req -newkey rsa:4096 -keyout server-key.pem -out server.csr -nodes
openssl x509 -req -in server.csr -CA ca-cert.pem -CAkey ca-key.pem -CAcreateserial -out server.pem