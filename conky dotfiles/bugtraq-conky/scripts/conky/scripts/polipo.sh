#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./polipo.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of Polipo in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Polipo
ps -ef | grep polipo > /tmp/polipo.txt
if cat /tmp/polipo.txt | grep "proxy" > /dev/null 2>&1

	then
		print '${color green}[UP]'

	else
		print '${color red}[DOWN]'
fi
