#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./postgres.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of Postgres in the conky
#------------------------------------------------------------------------------------
###################################################################################################
#Postgres
if /etc/init.d/postgresql-8.4 status | grep "8.4/main" > /dev/null 2>&1

        then
                print "[UP]"  > /dev/null 2>&1
        else
                print "[DOWN]" 
fi
