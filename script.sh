#!/bin/sh

[ -f $DH_PARAM_PATH/test2.txt ] || echo "File test2.txt not found!"
[ -f $DH_PARAM_PATH/test3.txt ] || echo "File test3.txt not found!"
[ ! -f $DH_PARAM_PATH/test2.txt ] || echo "File test2.txt found!"
[ ! -f $DH_PARAM_PATH/test3.txt ] || echo "File test3.txt found!"
echo $DH_PARAM_PATH/test2.txt

bool=true

if [ "$bool" = true ]; then
 echo -e "true"
fi

if [ ! -f $DH_PARAM_PATH/test3.txt ]; then
 echo -e "IS NOT !!!"
 echo -e "creating"
 touch $DH_PARAM_PATH/test3.txt
fi

sleep 50m


