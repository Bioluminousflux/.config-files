#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./MLDonkey.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del MLDonkey en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#MLDonkey
ps -ef | grep "ml" > /tmp/tmp.txt
if grep "mldonkey" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "[UP]" > /dev/null 2>&1
        else
                print "[DOWN]"
fi
