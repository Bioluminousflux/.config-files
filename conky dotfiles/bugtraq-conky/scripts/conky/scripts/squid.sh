#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./squid.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of Squid in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Squid
if ps -ef | grep "squid3" | grep "/usr/sbin" > /dev/null 2>&1

	then
		print '${color green}[UP]'

	else
		print '${color red}[DOWN]'
fi
