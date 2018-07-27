#!/bin/sh
chmod a+w $DHPARAM

if [ ! -f $DHPARAM]; then
    echo -e "not present, creating dh-param im secret volume"
    openssl dhparam -out $DHPARAM 2048
fi

exec "$@"
