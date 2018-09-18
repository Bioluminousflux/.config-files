#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./virtual2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Virtualbox in the Conky
#------------------------------------------------------------------------------------
###################################################################################################
#Virtualbox
if /etc/init.d/vboxdrv status | grep "are" > /dev/null 2>&1
 then
  print "[UP]" 
fi
