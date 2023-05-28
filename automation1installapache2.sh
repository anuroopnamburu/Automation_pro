#!/bin/bash

sudo chmod +x /home/ubuntu/Downloads/automation1installapache2.sh
ssh -i "devops1.pem" ubuntu@ec2-54-211-73-222.compute-1.amazonaws.com "
sudo = sudo apt
$sudo update -y
$sudo apt install -y apache2
sudo systemctl enable apache2
sudo systemctl status apache2
cd /var/log
ls -la
sudo tar -cvf /tmp/archive-$(date '+%d%m%Y-%H%M%S').tar /var/log/apache2/*.log
$sudo install awscli -y
aws s3 ls
aws s3 cp /tmp/archive-$(date '+%d%m%Y-%H%M%S').tar s3://ap01007/
$sudo install git 
git --version
bash
"

