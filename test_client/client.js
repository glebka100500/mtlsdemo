const fs = require('fs')
const https = require('https');

const options = {
  ca: fs.readFileSync('../certificates/ca-cert.pem'),
  cert: fs.readFileSync('client.pem'),
  key: fs.readFileSync('client-key.pem'),
  hostname: 'localhost', 
  port: 9098,
  path: '/',
  method: 'GET'
}

const req = https.request(options, (res) => {
  console.log('statusCode:', res.statusCode);

  res.on('data', (d) => {
    process.stdout.write(d);
  });
});

req.on('error', (e) => {
  console.error(e);
});

req.end();

