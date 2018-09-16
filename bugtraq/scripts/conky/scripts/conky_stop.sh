#!/usr/bin/ksh

PROC=`ps -ef | grep conky | head -n1 | awk '{print $2}'`
kill -9 $PROC
pkill conky
