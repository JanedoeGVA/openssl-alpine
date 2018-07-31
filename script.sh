#!/bin/sh

if [ ! -f /etc/ssl/dh-param/test2.txt]; then
    echo -e "not present, creating dh-param im secret volume"
    touch /etc/ssl/dh-param/test2.txt
fi

sleep 50m
