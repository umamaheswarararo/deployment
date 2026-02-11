#!/bin/bash 
echo "-------------------------"
echo "installing podman"
sudo apt-get update
sudo apt-get -y install podman-compose

echo "-------------------------"

echo "pulling images"
podman pull docker.io/nats:2.9.17
podman pull docker.io/redis:7.2.1
podman pull docker.io/opensearchproject/opensearch:2.15.0

echo "starting containers"
podman-compose -f ./cache_mq_server/nats/docker-compose.yml  up -d
podman-compose -f ./cache_mq_server/redis/docker-compose.yml up -d 
podman-compose -f ./cache_mq_server/ttns/docker-compose.yml  up -d
podman-compose -f ./cache_mq_server/opensearch/docker-compose.yml up -d