#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./xplicostart.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of Xplico then starts the Service with Apache2
#------------------------------------------------------------------------------------
#####################################################################################
#Xplico
if /etc/init.d/apache2 status | grep "NOT running" > /dev/null 2>&1
	then
		/etc/init.d/apache2 start
		sleep 4
		/etc/init.d/xplico start
	else
		/etc/init.d/xplico start
fi
	
