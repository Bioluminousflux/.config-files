#!/usr/bin/ksh

PROC=`ps -ef | grep evilgrade | grep perl | awk '{print $2}' | head -n1`
sudo kill -9 $PROC
