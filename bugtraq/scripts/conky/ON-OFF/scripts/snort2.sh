#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./snort.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de snort en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#Snort
ps -ef | grep "snort" > /tmp/tmp.txt
if grep "/usr/local/snort" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "[UP]" 
        else
                print "[DOWN]" > /dev/null 2>&1
fi
