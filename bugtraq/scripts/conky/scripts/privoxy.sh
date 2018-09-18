#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./privoxy.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of Privoxy in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Privoxy
if /etc/init.d/privoxy status | grep "is not running" > /dev/null 2>&1

	then
		print '${color red}[DOWN]'

	else
		print '${color green}[UP]'
fi
