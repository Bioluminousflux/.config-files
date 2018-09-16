#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./conky3.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de las
#    bases de datos Postgres y mysql en el conky
#------------------------------------------------------------------------------------
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
