#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./openv2.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of OpenVAS in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#OpenVAS
ps -ef | grep "openvas" > /tmp/tmp.txt
if grep "/usr/sbin/openvasad" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "[UP]"
        else
                print "[DOWN]"  > /dev/null 2>&1
fi
