#!/bin/sh
sudo apt-get purge docker.io docker-compose
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
