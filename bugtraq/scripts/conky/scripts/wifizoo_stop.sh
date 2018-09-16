#!/usr/bin/ksh

PROC=`ps -ef | grep "wifizoo.py -i" | grep -v "grep" | grep "gnome" | awk '{print $2}'`
kill -9 $PROC
