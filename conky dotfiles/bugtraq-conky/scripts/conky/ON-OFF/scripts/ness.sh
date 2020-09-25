#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./ness.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Nessus in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#Nessus
if [ -f /opt/nessus/bin/nessus ]
 then
  ps -ef | grep "nessus" > /tmp/tmp.txt
  if grep "nessusd -q" /tmp/tmp.txt > /dev/null 2>&1;
     then
	print "[UP]" > /dev/null 2>&1
     else
	print "[DOWN]" 
     fi
else
    print "[N.I.]"
fi

