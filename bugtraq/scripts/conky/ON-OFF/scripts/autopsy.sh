#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./autopsy.sh 
# - Version: 2.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq Team
# - descripción: Este script compruba el estadado de autopsy
#------------------------------------------------------------------------------------
###################################################################################################
#Autopsy
ps -ef | grep "autopsy" > /tmp/tmp.txt
if grep "/usr/bin/autopsy" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "[UP]"  > /dev/null 2>&1
        else
                print "[DOWN]" 
fi
