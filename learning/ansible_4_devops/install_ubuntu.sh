#!/bin/bash

# Ensure we have python-software-properties installed
sudo apt-get install python-software-properties

# Install Ansible from offical apt package
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

# Display installed version
ansible --version
