# Ad-Hoc Commands
Using [Vagrant](http://vagrantup.com) multi machine capabilities to create Ansible test environments.

[Vagrantfile](./Vagrantfile) creates:
* 2 Application Servers
* 1 Database Server

The local [inventory](./hosts) file called ```hosts``` can be used to run across all the Vagrant machines.

```
ansible -i hosts multi -a "hostname"

```

## Ad-Hoc Command to try

Get the hostname from all the server in parrallel
```
ansible -i hosts multi -a "hostname"
```

Use the ```-f``` option to use only one fork (sequential processing) 
```
ansible -i hosts multi -a "hostname" -f 1
```

Check the disk space on all hosts
```
ansible -i hosts multi -a "df -h"
```
