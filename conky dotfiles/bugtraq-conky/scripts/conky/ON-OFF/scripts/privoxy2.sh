#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./privoxy2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Privoxy in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#Privoxy
if /etc/init.d/privoxy status | grep "is not running" > /dev/null 2>&1

	then
		print "[DOWN]" > /dev/null 2>&1

	else
		print "[UP]" 
fi
