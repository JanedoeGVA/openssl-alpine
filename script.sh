#!/bin/sh

if [ ! -f $DH_PARAM_PATH/dhpram-2048.pem ]; then
 echo -e " Creating DH-PARAM..."
 openssl dhparam -out $DH_PARAM_PATH/dhparam-2048.pem 2048
 echo -e "DH parameters creating done."
fi

sleep 50m


