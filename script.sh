#!/bin/sh

[ -f $DH_PARAM_PATH/test2.txt ] || 

[ -f $DH_PARAM_PATH/test3.txt ] || echo "File test3.txt not found!"
[ ! -f $DH_PARAM_PATH/test2.txt ] || echo "File test2.txt found!"
[ ! -f $DH_PARAM_PATH/test3.txt ] || echo "File test3.txt found!"
echo $DH_PARAM_PATH/test2.txt

#if [ -f /etc/ssl/dh-param/test2.txt]; then
    #echo -e "text 2 not present, creating it"
    #touch /etc/ssl/dh-param/test2.txt
#fi

if [true]; then
 echo -e "true"
fi

sleep 50m
