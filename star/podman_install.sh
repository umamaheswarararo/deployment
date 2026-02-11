#!/bin/bash 
echo "-------------------------"
echo "installing podman"
sudo apt-get update
sudo apt-get -y install podman-compose

echo "-------------------------"

echo "pulling images"
podman pull docker.io/starrocks/allin1-ubuntu

echo "starting containers"
podman-compose -f ./star/docker-compose.yml  up -d