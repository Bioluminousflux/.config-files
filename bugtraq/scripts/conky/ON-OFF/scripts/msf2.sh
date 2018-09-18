#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./msf2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Metasploit in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#Metasploit
ps -ef | grep "metasploit" > /tmp/tmp.txt
if grep "/opt/metasploit" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "[UP]" 
        else
                print "[DOWN]" > /dev/null 2>&1
fi
