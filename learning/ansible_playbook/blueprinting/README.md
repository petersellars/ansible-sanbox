# Blueprinting
An introduction to Playbook, plays and task. The [customhosts](./customhosts) and [simple_playbook.yml](./simple_playbook.yml) provided
make use of the [learning_vms](../learning_vms) [Vagrant](https://vagrantup.com) machines.

## Custom Hosts
Custom hosts are declared in the [customhosts](./customhosts) file in this directory.

It is a good idea when creating a custom hosts file to test it using Ansibles ping module. Here we
are using [Vagrant](https://vagrantup.com) boxes so the following should work with the relevant
password supplied when prompted:
```
ansible -i customhosts -e "ansible_ssh_user=vagrant" -m ping all --ask-pass
```

## Simple Playbook
The [simple_playbook.yml](./simple_playbook.yml) does three things
* Creates a devops user on all hosts (part of the devops group)
* Installs the `htop` utility (improved verion of `top` - an interactive system process monitor)
* Adds the Nginx repository to Web Servers and starts it as a service
To run the simple playbook use the following command with the relevant Vagrant password supplied
when prompted:
```
ansible-playbook -i customhosts simple_playbook.yml --ask-pass
```
