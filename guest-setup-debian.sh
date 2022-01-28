#!/bin/bash

# Main setup for my VMs
main_apps() {
sudo apt install net-tools
sudo apt install tree
sudo apt install git
sudo apt install konsole
sudo apt install keepassxc
sudo apt install openssh-server
}

# VisualStudio Code
dev_apps() {
sudo apt-get update
sudo apt install apt-transport-https
sudo -y apt install code
sudo -y apt-get install python3.6
}

# Virtualization soft
vm_apps() {
curl -O https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
sudo apt install -y virtualbox
sudo apt install -y ./vagrant_2.2.9_x86_64.deb
sudo apt install -y wine-stable+
}

# Other soft
other_apps() {
sudo apt install synaptic
sudo apt install terminator
sudo apt install doublecmd-gtk
sudo apt install filezilla
}