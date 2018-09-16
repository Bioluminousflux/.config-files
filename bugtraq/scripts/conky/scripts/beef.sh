#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./beef.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del beef en el conky
###################################################################################################
#Beef
ps -ef | grep "beef" > /tmp/tmp.txt
if grep "ruby ./beef" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print '${color green} [UP]'
        else
                print '${color red} [DOWN]'
fi
