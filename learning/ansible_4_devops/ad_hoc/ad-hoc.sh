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

# Configure Database servers
ansible -i hostsansible -i hosts db -s -m yum -a "name=mariadb-server state=present"
ansible -i hosts db -s -m service -a "name=mariadb state=started enabled=yes"
ansible -i hosts db -s -a "iptables -F"
ansible -i hosts db -s -a "iptables -A INPUT -s 192.168.60.0/24 -p tcp \
 -m tcp --dport 3306 -j ACCEPT"
ansible -i hosts db -s -m yum -a "name=MySQL-python state=present"
ansible -i hosts db -s -m mysql_user -a "name=django host=% password=12345 \
 priv=*.*:ALL state=present"

# Operating on one server
ansible -i hosts app -s -a "service ntpd status"
ansible -i hosts app -s -a "service ntpd restart" --limit "192.168.60.4"
# Limit hosts with a simple pattern (asterisk is a wildcard)
ansible -i hosts app -s -a "service ntpd restart" --limit "*.4"
# Limit hosts with a regular expression (prefix with a tilde)
ansible -i hosts app -s -a "service ntpd restart" --limit ~".*\.4"

# Manage users and groups
ansible -i hosts app -s -m group -a "name=admin state=present"
ansible -i hosts app -s -m user -a "name=johndoe group=admin createhome=yes"
ansible -i hosts app -s -m user -a "name=johndoe state=absent remove=yes"

# Manage files and directories
ansible -i hosts multi -m stat -a "path=/etc/environment"
ansible -i hosts multi -m copy -a "src=/etc/hosts dest=/tmp/hosts"
ansible -i hosts multi -s -m fetch -a "src=/etc/hosts dest=/tmp"
ansible -i hosts multi -m file -a "dest=/tmp/test mode=644 state=directory"
#ansible -i hosts multi -m file -a "src=/src/symlink dest=/dest/symlink \
#  owner=root group=root state=link"
ansible -i hosts multi -m file -a "dest=/tmp/test state=absent"

# TIDY UP

# Remove downloaded host files
rm -Rf /tmp/192.168.60.*
