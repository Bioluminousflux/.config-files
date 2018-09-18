#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Name: ./conky3.sh 
# - Version: 1.0
# - Date: November 26th, 2011
# - Creator: Bugtraq-Team
# - Description: This script checks the status of the Postgres and MySQL databases in the conky
#------------------------------------------------------------------------------------
###################################################################################################
#Potsgres
if /etc/init.d/postgresql-8.4 status | grep "8.4/main" > /dev/null 2>&1

        then
                print "PostgresSQL                            [UP]"  > /dev/null 2>&1
        else
                print "PostgresSQL                           [DOWN]" 
fi
#mysql
if /etc/init.d/mysql status | grep "running" > /dev/null 2>&1

        then
                print "Mysql                            	     [UP]"  > /dev/null 2>&1
        else
                print "Mysql                                       [DOWN]"
fi
