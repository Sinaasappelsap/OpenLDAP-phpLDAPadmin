#!/bin/bash

# update
apt-get update
# Install slapd, ldap utilities and nscd
apt-get install slapd ldap-utils nscd -y
# Reconfigure slapd
dpkg-reconfigure slapd
# Configure ldap.conf
nano /etc/ldap/ldap.conf
# Install phpldapadmin
apt-get install phpldapadmin -y
# Configure config.php
nano /etc/phpldapadmin/config.php
# Configure posixaccount
nano /etc/phpldapadmin/templates/creation/posixAccount.xml
# Install libnss-ldap
apt-get install libnss-ldap -y
# Configure pam
nano /etc/pam.d/common-session
# configure login
nano /etc/nsswitch.conf
# Install openssh
apt-get install openssh-server -y
