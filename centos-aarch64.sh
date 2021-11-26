#!/bin/bash

sudo dnf update -y
sudo dnf clean all

sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
sudo dnf install -y docker-ce
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ${USER}
sudo systemctl stop firewalld
sudo systemctl disable firewalld
#Activate for arm64!!!
export DOCKER_CLI_EXPERIMENTAL=enabled

sudo dnf install -y python3 python-devel bzip2-devel libffi-devel
sudo pip3 install docker-compose
