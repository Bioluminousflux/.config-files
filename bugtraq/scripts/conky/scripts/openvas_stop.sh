#!/bin/bash

sudo killall openvassd
sleep 4 4 4 4 
sudo /etc/init.d/openvas-scanner stop
sudo /etc/init.d/openvas-manager stop
sudo /etc/init.d/openvas-administrator stop
sudo /etc/init.d/greenbone-security-assistant stop
gsd
