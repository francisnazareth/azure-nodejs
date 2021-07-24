#!/bin/sh
apt-get update -y
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
apt-get install -y nodejs
ufw allow 8080/tcp
tar -xf vote.tar -C /home/linadmin/
cd /home/linadmin/vote
sed -i "s/DB_HOST_REPLACE_ME/$1/g" .env
sed -i "s/DB_USER_REPLACE_ME/$2/g" .env
sed -i "s/DB_PASS_REPLACE_ME/$3/g" .env
npm start &