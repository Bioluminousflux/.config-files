#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./apache2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Apache2 in the conky
#------------------------------------------------------------------------------------
###################################################################################################
#Apache2
if /etc/init.d/apache2 status | grep "NOT running" > /dev/null 2>&1
	then
		print "[DOWN]" 
	else
		print "Apache                                    [UP]" > /dev/null 2>&1
fi
