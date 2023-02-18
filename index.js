const https = require("https")
fs = require("fs");

const key = fs.readFileSync('keys/server-key.pem');
const cert = fs.readFileSync('certificates/server.pem');
const ca = fs.readFileSync('certificates/ca-cert.pem');

const options = {
  key,
  cert,
  ca,
  requestCert: true, 
  rejectUnauthorized: true
};

https.createServer(
    options,
    (req, res) => {
      if (!req.client.authorized) {
        res.writeHead(401);
        rçes.write('Invalid client certificate authentication.');
        return res.end();
      }
      else {
        console.log("Validated Client Certificate")
        res.writeHead(200);
        res.write('Client Certificate Valid.\n\n **** Good Morning ****\n\n');
        res.end();
      }
    }
  )
  .listen(9098);