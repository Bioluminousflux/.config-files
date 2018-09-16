#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./metasploit.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del metsasploit en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#Metasploit
ps -ef | grep "metasploit" > /tmp/tmp.txt
if grep "/opt/metasploit" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "[UP]" > /dev/null 2>&1
        else
                print "[DOWN]"
fi
