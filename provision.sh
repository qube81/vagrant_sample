#!/usr/bin/env bash

echo 'start!'

apt-get update 
apt-get install -y apache2 mysql-client

rm -rf /var/www
ln -fs /vagrant /var/www

echo "<h1>MOYA</h1>" >> /vagrant/index.html
