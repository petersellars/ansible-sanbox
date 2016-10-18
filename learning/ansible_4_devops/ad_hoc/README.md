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

Check the memory on all hosts
```
ansible -i hosts multi -a "free -m"
```

Check the date and time on each server is in sync
```
ansible -i hosts multi -a "date"
```

Get an exhaustive list of all the environment details ('fact')
```
ansible -i hosts multi -m setup
```

## Ad-Hoc Commands in Script File
Take a look at [ad-hoc.sh](./ad-hoc.sh) to see other ad-hoc commands. This can be run too to update the virtual machines in the Vagrantfile in this directory. There are ad-hoc commands to:
* Install the NTP daemon, ensure it is stated and synchronise servers to the official time on the NTP server
* Install Django on the Application Servers
* Manage users and groups
* Manage files and directories
