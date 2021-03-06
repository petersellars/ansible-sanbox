# Local Infrastructure Development: Ansible and Vagrant
Prototyping and testing with local machines

In order to use the scripts in this folder the following applications need to be installed
* [VirtualBox]
* [Vagrant]

[Vagrant] should be installed by downloading the relevant package from the [Vagrant Download Page](https://www.vagrantup.com/downloads.html).

[VirtualBox] installation requires adding `deb http://download.virtualbox.org/virtualbox/debian xenial contrib` to your /etc/apt/source.list on Debian-based Linux distributions

```
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-5.1
# install dkms package to ensure VirtualBox host kernel modules get properly 
# updated on linux kernel version changes
sudo apt-get install dkms
```

## Download and initialise a Vagrant Box
```
vagrant box add geerlingguy/centos7
vagrant init geerlingguy/centos7
```

## Running Ansible on Vagrant Box
Once you have the Vagrant box above downloaded and initialised you can run an [Ansible] playbook

### Simple Vagrant Configuration for [Ansible]
```
config.vm.provision "ansible" do | ansible |
  ansible.playbook = "playbook.yml"
end
```

The [VagrantFile](./VagrantFile) contained in this folder can be used with [playbook.yml](./playbook.yml)

```
vagrant up
vagrant provision
```

[Ansible]: https://www.ansible.com/
[Vagrant]: https://www.vagrantup.com
[VirtualBox]: https://www.virtualbox.org/
