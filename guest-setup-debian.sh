#!/bin/bash

# Basic setup for my VMs
sudo apt -y install net-tools
sudo apt -y install tree
sudo apt -y install git
sudo apt -y install konsole
sudo apt -y install keepassxc

# VisualStudio Code
sudo apt install apt-transport-https
sudo -y apt update
sudo -y apt install code

curl -O https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
sudo -y apt install virtualbox
sudo apt install ./vagrant_2.2.9_x86_64.deb
vagrant --version
sleep 5
sudo -y apt install wine-stable+
sudo -y apt install synaptic
sudo -y apt install terminator
sudo -y apt install doublecmd-gtk
sudo -y apt-get update
sudo -y apt-get install python3.6
sudo -y apt install filezilla