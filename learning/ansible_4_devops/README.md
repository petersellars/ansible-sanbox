# Ansible for DevOps
Learning/Examples from [Ansible for DevOps](https://www.ansiblefordevops.com/)

* [install_ubuntu.sh](./install_ubuntu.sh) - Install Ansible on Debian/Ubuntu
* [hosts](./hosts) - Basic Inventory File
* [ad-hoc_commands.md](./ad-hoc_commands.md) - Examples of Ansible Ad-hoc Commands

## Inventory File
File containing a list of servers for Ansible to communicate with. Matches servers (IP addresses or domain names) to groups. Default location `/etc/ansible/hosts`

## Ad-hoc Commands
Ansible assumes passwordless (key-based) login for SSH. If you still use passwords add the `--ask-pass (-k)` flag to Ansible commands. Better still set up passwordless login!

### Folders

* [local_infra](./local_infra) - Simple Playbook with Vagrant
* [ad_hoc](./ad_hoc) - Multi Vagrant machines
