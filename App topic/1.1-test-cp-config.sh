#!/bin/bash

set_config() {
    nginx_config="nginx.conf"
    my_com_config="ihor.com.conf"
    if [[ -f "$(pwd)/${nginx_config}" ]] || [[ -f "$(pwd)/${my_com_config}" ]]; then
        cp ${nginx_config} /etc/nginx
        cp ${my_com_config} /etc/nginx/sites-avalible
    else
        echo "ERROR to exports your config files. Please, check it!"
    fi
}


set_config

