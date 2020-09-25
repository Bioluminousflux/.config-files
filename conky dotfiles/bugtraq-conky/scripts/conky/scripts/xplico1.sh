#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./xplico1.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of Xplico in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Xplico
if ps -ef | grep xplico | grep root > /dev/null 2>&1
	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
fi
