#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./openv.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del openvas en el conky
#-----------------------------------------------------------------------------------
###################################################################################################
#Openvas
if [ -f /usr/sbin/openvasad ]
 then
   ps -ef | grep "openvas" > /tmp/tmp.txt
     if grep "/usr/sbin/openvasad" /tmp/tmp.txt > /dev/null 2>&1;
        then
                print "[UP]" > /dev/null 2>&1
        else
                print "[DOWN]" 
fi
else
    print "[N.I.]"
fi


