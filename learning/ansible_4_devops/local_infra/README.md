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

[Vagrant]: https://www.vagrantup.com
[VirtualBox]: https://www.virtualbox.org/
