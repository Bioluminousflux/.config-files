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
if grep "/bugtraq/tools/forensics/autopsy/./autopsy" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print '${color green}[UP]'
        else
                print '${color red}[DOWN]' 
fi
