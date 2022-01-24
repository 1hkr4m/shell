#!/bin/bash

apt-get install nginx

if [[ "${?}" -ne 0 ]]
    then
      echo "Nginx is not installed." >&2
      exit 1
fi

nginx -V
nginx -t

check_status() {

var='active'
if [[ $var == $(systemctl status nginx.service | grep Active | cut -d ":" -f2 | cut -d " " -f2) ]]
then
    ehco "nginx is acive"
else
    "nginx is down"
    systemctl start nginx.service
    check_status()
fi
}

