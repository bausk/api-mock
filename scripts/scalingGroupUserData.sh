#!/bin/bash
apt-get -y update
apt-get -y install ruby
apt-get -y install wget

cd /home/ubuntu
wget https://aws-codedeploy-us-west-2.s3.amazonaws.com/latest/install
chmod +x ./install
./install auto
