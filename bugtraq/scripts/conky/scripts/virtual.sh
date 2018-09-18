#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./virtual.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of VirtualBox in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#VirtualBox
if /etc/init.d/virtualbox status | grep "not loaded" > /dev/null 2>&1
 then
  print '${color red}[DOWN]'
 elif /etc/init.d/virtualbox status | grep "are" > /dev/null 2>&1
  then
   print '${color green}[UP]'
    else
   print '${color red}[N.I.]'
fi


