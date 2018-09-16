#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./ness.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del nessus en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#Nessus
if [ -f /opt/nessus/bin/nessus ]
 then
  ps -ef | grep "nessus" > /tmp/tmp.txt
  if grep "nessusd -q" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print '${color green}[UP]' 
	else
		print '${color red}[DOWN]'
	fi
     
else
    print '${color red}[N.I.]'
fi

