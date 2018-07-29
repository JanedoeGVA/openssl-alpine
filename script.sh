#!/bin/sh
chmod a+w $DH_PARAM_PATH

if [ ! -f $DH_PARAM_PATH/test.txt]; then
    echo -e "not present, creating dh-param im secret volume"
    #openssl dhparam -out $DH_PARAM_PATH/dhparam-2048.pem 2048
else 
    echo -2 "present !!!"
fi
