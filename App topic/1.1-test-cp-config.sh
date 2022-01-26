#!/bin/bash

set_config() {
    
    nginx_config="./nginx.conf"
    my_com_config="./ihor.com.config"
    if [[ ! -d "${ngix_conf}" ]] || [[ ! -d "${my_com_config}" ]]
    then
        cp ${nginx_config} /etc/nginx
        cp ${my_com_config} /etc/nginx/sites-avalible
    else
        echo "ERROR to exports your config files. Please, check it!" >> $LOG_FILE
}


