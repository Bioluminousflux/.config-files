#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./msf2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del metasploit en el conky
#------------------------------------------------------------------------------------
##################################################################################################
#Metasploit
ps -ef | grep "metasploit" > /tmp/tmp.txt
if grep "/opt/metasploit" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "[UP]" 
        else
                print "[DOWN]" > /dev/null 2>&1
fi
