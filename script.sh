#!/bin/sh

if [ ! -f /etc/ssl/dh-param/test2.txt] 
then
    echo -e "not present, creating dh-param im secret volume"
    touch /etc/ssl/dh-param/test2.txt
    #openssl dhparam -out $DH_PARAM_PATH/dhparam-2048.pem 2048
else 
    cat $DH_PARAM_PATH/test2.txt
    echo "present !!!"
fi

sleep 50m
