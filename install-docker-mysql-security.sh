#!/bin/bash


sudo git clone https://github.com/zerept/docker-centos-mysql-security.git

sleep 5

cd docker-centos-mysql-security/docker-deploys/
echo pwd
sleep 5

sudo /bin/bash instalar.sh
