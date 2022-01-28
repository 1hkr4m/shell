#!/bin/bash

# Make sure the script is not being executed with superuser privileges.
if [[ "${UID}" -eq 0 ]]
then
  echo 'Do not execute this script as root. Use the -s option instead.' >&2
  usage
fi

echo "#------------------------------------" | sudo tee -a /etc/hosts
echo "192.33.33.33      atlas" | sudo tee -a /etc/hosts
echo "192.33.33.44      xiomi" | sudo tee -a /etc/hosts
echo "#------------------------------------" | sudo tee -a /etc/hosts
echo "192.33.33.10      ubuntu-vmw" | sudo tee -a /etc/hosts
echo "192.33.33.11      centos7-vmw" | sudo tee -a /etc/hosts
echo "192.33.33.12      centos8-vmw" | sudo tee -a /etc/hosts
echo "192.33.33.13      kali-vmw" | sudo tee -a /etc/hosts
echo "192.33.33.14      fedora-vmw" | sudo tee -a /etc/hosts
echo "192.33.33.15      mitn-vmw" | sudo tee -a /etc/hosts
echo "192.33.33.16      debian-vmw" | sudo tee -a /etc/hosts
echo "#------------------------------------" | sudo tee -a /etc/hosts
echo "192.33.33.20      ubuntu2-vmw" | sudo tee -a /etc/hosts



#127.0.0.1	localhost
#127.0.1.1	atlas

# The following lines are desirable for IPv6 capable hosts
#::1     ip6-localhost ip6-loopback
#fe00::0 ip6-localnet
#ff00::0 ip6-mcastprefix
#ff02::1 ip6-allnodes
#ff02::2 ip6-allrouters
