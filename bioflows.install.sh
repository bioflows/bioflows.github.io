echo "Installing Bioflows..."
echo "###########################Installing Docker###########################"
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.#!/bin/sh
echo "adding your current username to docker group"
sudo usermod -aG docker $1
echo "Starting Docker Engine..."
sudo service docker start
echo "###########################Installing Consul###########################"
curl -O https://releases.hashicorp.com/consul/1.8.4/consul_1.8.4_linux_amd64.zip
echo "Unzipping consul"
unzip consul_1.8.4_linux_amd64.zip
sudo mv consul /usr/bin
sudo chmod a+x /usr/bin/consul

echo "###########################Downloading Bioflows###########################"

curl -O http://bioflows.github.io/bin/bf
sudo mv bf /usr/bin
sudo chmod a+x /usr/bin/bf

echo "Installation complete."
