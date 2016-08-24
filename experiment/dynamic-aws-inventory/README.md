# Dynamic AWS Inventory
Based on the Ansible [dynamic inventory](http://docs.ansible.com/ansible/intro_dynamic_inventory.html) documentation.

## Set Up the EC2 External Experiment 
The Vagrant box runs the ```set-up-ec2-external.sh``` script to install the latest ```ec2.py``` file for use in this experiment and the [boto](https://github.com/boto/boto) library needed to run the EC2 External Inventory Script.

## TODO
* Put out of the box usable ec2.ini file in this directory and copy it into Vagrant box
** Needs to have rds=false and elasticsearch=false to work out of the box
* Set EC2_INI_PATH environment variable to enable use of ec2.py
* Copy .aws credentials into box - templates into source
