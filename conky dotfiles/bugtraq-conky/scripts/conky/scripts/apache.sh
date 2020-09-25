#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./apache.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Apache2 in the conky
#------------------------------------------------------------------------------------
###################################################################################################
#Apache2
if /etc/init.d/apache2 status | grep "NOT running" > /dev/null 2>&1
	then
		print '${color red}[DOWN]' 
	else
		print '${color green}[UP]' 
fi
