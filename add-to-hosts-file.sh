#!/bin/bash

cat ${1} | sudo tee -a /etc/hosts
