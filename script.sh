#!/bin/sh

if [ ! -f /etc/ssl/dh-param/test2.txt]; then
    echo -e "not present, creating dh-param im secret volume"
    touch /etc/ssl/dh-param/test2.txt
    #openssl dhparam -out $DH_PARAM_PATH/dhparam-2048.pem 2048
fi

sleep 50m
