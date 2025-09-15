#!/bin/bash
apt-get update -y
apt-get install -y docker.io
systemctl enable docker
systemctl start docker
sudo usermod -aG docker ubuntu

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt-get update -y && sudo apt-get install -y unzip
unzip awscliv2.zip
sudo ./aws/install
rm -rf aws awscliv2.zip