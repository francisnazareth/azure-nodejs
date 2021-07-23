#!/bin/sh
apt-get update -y
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list
apt-get install -y nodejs mssql-tools unixodbc-dev
/opt/mssql-tools/bin/sqlcmd -S $1 -U $2 -P $3 -d sample -i football_table.sql
ufw allow 8080/tcp
tar -xvf vote.tar
cd vote
sed -i 's/DB_HOST_REPLACE_ME/$1/g' .env
sed -i 's/DB_USER_REPLACE_ME/$2/g' .env
sed -i 's/DB_PASS_REPLACE_ME/$3/g' .env
npm start &