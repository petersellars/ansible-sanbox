#!/bin/bash

# Install the EC2 External Inventory Script
wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.py
chmod +x ec2.py

# Download the ec2.ini file and put it in the correct location
wget https://raw.githubusercontent.com/ansible/ansible/devel/contrib/inventory/ec2.ini
sudo mv ec2.ini /etc/ansible/ec2.ini
sudo chown root:root /etc/ansible/ec2.ini

# Ensure boto is installed
sudo apt-get install python-pip -y
yes | sudo pip install boto

