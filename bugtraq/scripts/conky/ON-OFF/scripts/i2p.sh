#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./i2p.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del i2p en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#I2P
ps -ef | grep "i2p" > /tmp/tmp.txt
if grep "/etc/i2p/wrapper.config" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "[UP]" > /dev/null 2>&1
        else
                print "[DOWN]"
fi
