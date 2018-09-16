#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./openv2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del openvas en el conky
#-----------------------------------------------------------------------------------
###################################################################################################
#Openvas
ps -ef | grep "openvas" > /tmp/tmp.txt
if grep "/usr/sbin/openvasad" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "[UP]"
        else
                print "[DOWN]"  > /dev/null 2>&1
fi
