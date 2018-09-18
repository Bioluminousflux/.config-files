#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./msf.sh 
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
                print "[UP]" > /dev/null 2>&1
        else
                print "[DOWN]"
fi
