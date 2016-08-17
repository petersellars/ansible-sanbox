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

## No Provision/Provision
```
vagrant up --no-provision <node> 
vagrant provision <node> --provision-with shell
```

## Check Status
```
vagrant status

Current machine states:

control                  running (virtualbox)
db                       not created (virtualbox)
dbel                     not created (virtualbox)
www                      not created (virtualbox)
lb                       not created (virtualbox)

This environment represents multiple VMs. The VMs are all listed
above with their current state. For more information about a specific
VM, run `vagrant status NAME`.
```
