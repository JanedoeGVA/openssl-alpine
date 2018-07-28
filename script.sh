#!/bin/sh
chmod a+w /etc/ssl/dh-param

#if [ ! -f /etc/ssl/dh-param/dhparam-2048.pem]; then
    echo -e "not present, creating dh-param im secret volume"
    #openssl dhparam -out $DHPARAM 2048
#fi
