#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./postgres.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of Postgres in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Postgres
if /etc/init.d/postgresql status | grep "main" > /dev/null 2>&1

	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
fi
