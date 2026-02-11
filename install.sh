#!/bin/bash

echo "Installing mongodb container"
chmod +x ./mongo/podman_install.sh
./mongo/podman_install.sh

echo "Installing nginx container"
chmod +x ./nginx/install_nginx.sh
./nginx/install_nginx.sh    

echo "Installing haproxy container"
chmod +x ./haproxy/install_haproxy.sh
./haproxy/install_haproxy.sh

echo "Installing cache and mq services"
chmod +x ./cache_mq_server/podman_install.sh
./cache_mq_server/podman_install.sh