const http = require('http');
var ip = require('ip')

const hostname = '0.0.0.0';
const port = 8080;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/html');
  res.end('<html><body><h3><div align="center">Hello Landing Zone :-) this is server from IP ' + ip.address() + '</div></h3></body></html>');
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
