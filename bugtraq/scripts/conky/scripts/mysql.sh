#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./mysql.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of MySQL in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#MySQL
if ps -ef | grep mysql | grep 3306 > /dev/null 2>&1

	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
fi
