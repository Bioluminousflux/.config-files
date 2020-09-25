#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./metasploit.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of Metasploit in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Metasploit
ps -ef | grep "metasploit" > /tmp/tmp.txt
if grep "/opt/metasploit" /tmp/tmp.txt > /dev/null 2>&1;

	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
fi

