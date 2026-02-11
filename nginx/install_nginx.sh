#!/bin/bash
apt-get update -y
apt-get install -y nginx

cp ./nginx/halo.conf /etc/nginx/conf.d/halo.conf