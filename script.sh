#!/bin/sh

[ -f $DH_PARAM_PATH/test2.txt ] || echo "File test2.txt not found!"
[ -f $DH_PARAM_PATH/test3.txt ] || echo "File test3.txt not found!"
[ ! -f $DH_PARAM_PATH/test2.txt ] || echo "File test2.txt found!"
[ ! -f $DH_PARAM_PATH/test3.txt ] || echo "File test3.txt found!"
echo $DH_PARAM_PATH/test2.txt

sleep 50m
