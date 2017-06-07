#! /bin/bash

cd /etc/bind
echo "################################################"
echo "git checkout db.app.tsn db.10 ##################"
sudo git checkout db.app.tsn
sudo git checkout db.10

echo "################################################"
echo "git pull start #################################"
sudo git pull origin master

echo "################################################"
echo "restart bind9 ##################################"
sudo systemctl restart bind9.service
cd

echo "################################################"
echo "bind9 status ###################################"
sudo systemctl status bind9.service

echo "################################################"
echo "bind9 journalctl ###############################"
sudo journalctl -u bind9.service
