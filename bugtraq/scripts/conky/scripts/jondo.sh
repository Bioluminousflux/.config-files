#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./jondo.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of Jondo in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Jondo
ps -ef | grep "JAP" > /tmp/tmp.txt
if grep "/usr/share/java/JAP" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
fi
