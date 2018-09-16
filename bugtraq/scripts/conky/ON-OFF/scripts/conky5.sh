#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./conky5.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de las bases de
#    de datos Postgres y mysql en el conky
#------------------------------------------------------------------------------------
#Potsgres
if /etc/init.d/postgresql-8.4 status | grep "8.4/main" > /dev/null 2>&1

        then
                print "PostgresSQL                            [UP]"
        else
                print "PostgresSQL                           [DOWN]"  > /dev/null 2>&1
fi
#mysql
if /etc/init.d/mysql status | grep "running" > /dev/null 2>&1

        then
                print "Mysql                            	     [UP]"
        else
                print "Mysql                                       [DOWN]"  > /dev/null 2>&1
fi
