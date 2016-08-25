# Dynamic AWS Inventory
Based on the Ansible [dynamic inventory](http://docs.ansible.com/ansible/intro_dynamic_inventory.html) documentation.

[Dynamic AWS Inventory](https://aws.amazon.com/blogs/apn/getting-started-with-ansible-and-dynamic-amazon-ec2-inventory-management/) is a good blog post on the topic to read too. It covers aspects of setting up dynamic AWS inventories not covered in the official documentation.

## Set Up the EC2 External Experiment 
The Vagrant box runs the ```set-up-ec2-external.sh``` script to install the latest ```ec2.py``` file for use in this experiment and the [boto](https://github.com/boto/boto) library needed to run the EC2 External Inventory Script.

## TODO
* Put out of the box usable ec2.ini file in this directory and copy it into Vagrant box
** Needs to have rds=false and elasticsearch=false to work out of the box
* Set EC2_INI_PATH environment variable to enable use of ec2.py
* Copy .aws credentials into box - templates into source
* Document use of AWS_PROFILE=<profile> when running the plays
* Document use of --profile <profile> using ec2.py script
