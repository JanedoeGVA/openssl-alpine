#!/bin/bash
chmod a+w /etc/ssl/dh-param

#if [ ! -f $DHPARAM]; then
    echo -e "not present, creating dh-param im secret volume"
    #openssl dhparam -out $DHPARAM 2048
#fi
