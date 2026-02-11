#!/bin/bash 
echo "-------------------------"
echo "installing podman"
sudo apt-get update
sudo apt-get -y install podman-compose

echo "pulling images"
podman pull docker.io/mongo:7

echo "starting containers"
podman-compose -f ./mongo/docker-compose.yml up -d