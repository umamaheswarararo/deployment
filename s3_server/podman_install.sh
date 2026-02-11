#!/bin/bash 
echo "-------------------------"
echo "installing podman"
sudo apt-get update
sudo apt-get -y install podman-compose

echo "pulling images"
podman pull docker.io/tectoro/s3-server:0.1-dev-12.1

echo "starting containers"
podman-compose -f ./s3_server/docker-compose.yml up -d