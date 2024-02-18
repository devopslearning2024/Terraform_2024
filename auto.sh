#!/bin/bash
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform
sudo yum update -y
sudo yum install git -y
sudo yum install docker -y
#sudo systemctl enable docker
#sudo service docker enable
sudo service docker start
