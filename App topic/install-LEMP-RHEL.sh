#!/bin/bash

#install nginx
sudo su -
yum -y install nginx
systemctl enable nginx
nginx -t
systemctl start nginx
systemctl status nginx
#Configure HTTP Access through the firewall
firewall-cmd --info-zone=public #check th firewall configuration
services: cockpit dhcpv6-client ssh #http traffic is not configured
firewall-cmd --zone=puplic --add-service=http --permanent #allow http traffic throught 
firewall-cmd --reload
firewall-cmd --info-zone=public
services: cockpit dhcpv6-client ssh
#Verify basic http fuctionality in nginx
curl http://`curl v4.ifconfig.co`
#Now we'll use a web browser to go to the default NGINX web page at
#http://OUR_PUBLIC_IP_ADDRESS. We should see the default NGINX page.
#We can find the public IP address of the instance in the
#/home/cloud_user/server_info.txt file.

#install the php components
yum -y install php php-pdo php-mysqlnd php-gd php-mbstring php-fpm

#Verifying PHP Functionality in NGINX
curl -H "www.bigstatecollege.edu" http://www.bigstatecollege.edu/phpinfo.php

#Install MariaDB
yum -y install mariadb mariadb-server
systemctl enable mariadb
systemctl start mariadb
systemctl status mariadb
mysql -V #mariadb version


