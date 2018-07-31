#!/bin/sh

[ -f $DH_PARAM_PATH/test2.txt ] || echo "File test2.txt not found!"
[ -f $DH_PARAM_PATH/test3.txt ] || echo "File test3.txt not found!"
[ ! -f $DH_PARAM_PATH/test2.txt ] || echo "File test2.txt found!"
[ ! -f $DH_PARAM_PATH/test3.txt ] || echo "File test3.txt found!"
echo $DH_PARAM_PATH/test2.txt

#if [ -f /etc/ssl/dh-param/test2.txt]; then
    #echo -e "text 2 not present, creating it"
    #touch /etc/ssl/dh-param/test2.txt
#fi

bool=true

if [ "$bool" = true ]; then
 echo -e "true"
fi

if [ ! -f $DH_PARAM_PATH/test3.txt ]; then
 echo -e "IS NOT !!!"
 echo -e "creating"
fi

sleep 50m


