#!/bin/bash

echo "Installing mongodb container"
./mongo/podman_install.sh

echo "Installing nginx container"
./nginx/install_nginx.sh    

echo "Installing haproxy container"
./haproxy/install_haproxy.sh

echo "Installing cache and mq services"
./cache_mq_server/podman_install.sh