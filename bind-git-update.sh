#! /bin/bash

cd /etc/bind
echo "################################################"
echo "## git checkout db.app.tsn db.10               #"
echo "################################################"
sudo git checkout db.app.tsn
sudo git checkout db.10

echo "################################################"
echo "## git pull origin mastergit pull start        #"
echo "################################################"
sudo git pull origin master

echo "################################################"
echo "## systemctl restart bind9.service             #"
echo "################################################"
sudo systemctl restart bind9.service
cd

echo "################################################"
echo "## systemctl status bind9.service              #"
echo "################################################"
sudo systemctl status bind9.service

echo "################################################"
echo "## journalctl -u bind9.service                 #"
echo "################################################"
sudo journalctl -u bind9.service
