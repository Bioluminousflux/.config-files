#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./myaql2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del mysql en el conky
#------------------------------------------------------------------------------------
#mysql
if /etc/init.d/mysql status | grep "running" > /dev/null 2>&1

        then
                print "[UP]"  
        else
                print "[DOWN]" > /dev/null 2>&1
fi
