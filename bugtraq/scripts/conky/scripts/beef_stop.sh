#!/usr/bin/ksh

PROC=`ps -ef | grep beef | grep ruby | awk '{print $2}'`
sudo kill -9 $PROC
sudo pkill beef
