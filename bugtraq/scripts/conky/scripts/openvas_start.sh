#!/bin/bash

sudo killall openvassd
sleep 5
sudo /etc/init.d/openvas-scanner start
sudo /etc/init.d/openvas-manager start
sudo /etc/init.d/openvas-administrator restart
sudo /etc/init.d/greenbone-security-assistant restart
test -e /var/lib/openvas/users/admin || sudo openvasad -c add_user -n admin -r Admin
gsd
