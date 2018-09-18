#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./ness.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This checks the status of Nessus in the conky
#------------------------------------------------------------------------------------
#####################################################################################
#Nessus
if [ -f /opt/nessus/bin/nessus ]
 then
  ps -ef | grep "nessus" > /tmp/tmp.txt
  if grep "nessusd -q" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
	fi
     
else
    print '${color red}[N.I.]'
fi

