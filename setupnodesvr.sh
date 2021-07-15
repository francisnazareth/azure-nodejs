#!/bin/sh

apt-get update -y
apt-get install -y npm nodejs
ufw allow 8080/tcp
node app.js
