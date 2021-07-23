#!/bin/sh
apt-get update -y
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
apt-get install -y nodejs
ufw allow 8080/tcp
tar -xvf vote.tar
cd vote
npm start &
