#!/bin/bash

# Ansible commands from the ad-hoc chapter

# Install NTP Daemon and ensure it is started
#
# '-s' is alias for --sudo
# '-m' is alias for --module
# '-a' is alias for --args
ansible -i hosts multi -s -m yum -a "name=ntp state=present"
ansible -i hosts multi -s -m service -a "name=ntpd state=started enabled=yes"

# Sync the server times with the official time on the NTP server
ansible -i hosts multi -s -a "service ntpd stop"
ansible -i hosts multi -s -a "ntpdate -q 0.rhel.pool.ntp.org"
ansible -i hosts multi -s -a "service ntpd start"

ansible -i hosts multi -a "date"

# Install Django on the Application Servers
ansible -i hosts app -s -m yum -a "name=MySQL-python state=present"
ansible -i hosts app -s -m yum -a "name=python-setuptools state=present"
ansible -i hosts app -s -m easy_install -a "name=django state=present"

ansible -i hosts app -a "python -c 'import django; print django.get_version()'"
