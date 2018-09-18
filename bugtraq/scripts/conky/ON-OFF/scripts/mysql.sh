#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./mysql.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of MySQL in the Conky
#------------------------------------------------------------------------------------
#####################################################################################
#MySQL
if /etc/init.d/mysql status | grep "running" > /dev/null 2>&1

        then
                print "[UP]"  > /dev/null 2>&1
        else
                print "[DOWN]"
fi
