#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./avg2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del AVG en el conky
###################################################################################################
#AVG
if [ -f /opt/avg/av/bin/avgscand ]
then
 ps -ef | grep "avg" > /tmp/tmp.txt
 if grep "/opt/avg/av/bin/avgscand" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" > /dev/null 2>&1
	else
		print "[DOWN]" 
fi
else
 	print "[NOT INSTALLED]"
fi
