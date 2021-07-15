#!/bin/sh

apt-get install -y npm nodejs
ufw allow 8080/tcp
node app.js
