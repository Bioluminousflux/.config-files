#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./postgres2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de postgres en el conky
#------------------------------------------------------------------------------------
#Potsgres
if /etc/init.d/postgresql-8.4 status | grep "8.4/main" > /dev/null 2>&1

        then
                print "[UP]"  
        else
                print "[DOWN]"  > /dev/null 2>&1
fi
