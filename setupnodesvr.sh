#!/bin/sh
apt-get update -y
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
apt-get install -y npm nodejs
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
add-apt-repository universe
apt-get -y install apt-transport-https
apt-get -y update
apt-get -y install unzip
ufw allow 8080/tcp
tar -xvf vote.tar
cd vote
npm start
