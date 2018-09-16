#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./xplico1.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del xplico en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#Xplico
if ps -ef | grep xplico | grep root > /dev/null 2>&1
        then
                print "[UP]" > /dev/null 2>&1
        else 
                print "[DOWN]"
fi
