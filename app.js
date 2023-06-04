const http = require('http');

const server = http.createServer((req, res) => {
    res.statusCode = 200;
    res.setHeader('Content-type', 'text/plain');
    res.end('This is node-js application!!!');
});

const port = process.env.PORt || 3000;

server.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
