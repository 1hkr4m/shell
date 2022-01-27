#!/bin/bash
vmrun -T ws listSnapshots "/home/ihor/VMware/Ubuntu-vmw/Ubuntu-vmw.vmx"

vmrun -T ws revertToSnapshot "/home/ihor/VMware/Ubuntu-vmw/Ubuntu-vmw.vmx" ubuntu-vscode-vagrant-gns3