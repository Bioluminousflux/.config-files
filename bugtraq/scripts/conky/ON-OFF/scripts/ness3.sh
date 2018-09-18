#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./ness3.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Nessus in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#Nessus
if [[ -f /usr/bin/nessus ]];
then
	print "[INSTALLED]" > /dev/null 2>&1
else
	print "[NO INSTALLED]"
fi
