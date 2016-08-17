# Ansible Learning Environment
The Vagrantfile in this folder declares 5 virtual machines for use in Learning Ansible

* Controller [control] - Only host with Ansible installed
* Database (Ubuntu) [db] - MySQL on Ubuntu
* Database (CentOS) [dbel] - MySQL on CentOS
* Web Server [www] - Runs Apache Web Server
* Load Balancer [lb] - Runs the haproxy application

## Bring Up A Node
```
vagrant up <node>
```

## SSH To A Node
```
vagrant ssh <node>
```
