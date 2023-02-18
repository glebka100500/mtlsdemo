#!/bin/bash

curl --cacert ../certificates/ca-cert.pem \
     --key ../keys/client-key.pem \
     --cert ../certificates/client.pem \
     https://localhost:9098
