#!/bin/bash

sudo su -
apt-get -y install nginx
systemctl status nginx
ufw status
ufw allow 'Nginx HTTP'
ufw status
curl http://'curl v4.ifconfig.co'
apt-get -y install php-fpm php-mysql
#To make the bigstatecollege.edu virtual host active, we create a symlink to the appropriate configuration file in the sites-enabled directory:
ln -s /etc/nginx/sites-available/bigstatecollege.edu.conf /etc/nginx/sites-enabled/bigstatecollege.edu.conf
nginx -t
systemctl reload nginx
systemctl restart php7.2-fpm.service
#Verifying PHP Functionality in NGINX
curl -H "www.bigstatecollege.edu" http://www.bigstatecollege.edu/phpinfo.php

#install mariadb
apt-get -y install mariadb-server
systemctl status mariadb

mysql -V

