#!/bin/sh
apt-get update -y
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list
apt-get install -y nodejs mssql-tools unixodbc-dev
/opt/mssql-tools/bin/sqlcmd -S $1 -U sqladmin -P Passw0rd!123 -i football_table.sql
ufw allow 8080/tcp
tar -xvf vote.tar
cd vote
npm start &