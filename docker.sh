#!/bin/bash


echo "remove all docker file"
sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
echo "done"

echo "start installation docker"
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo       
sudo yum install docker-ce docker-ce-cli containerd.io
echo "installation done"

sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker