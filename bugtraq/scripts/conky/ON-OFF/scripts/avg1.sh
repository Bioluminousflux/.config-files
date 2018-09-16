#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./avg1.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del AVG en el conky
###################################################################################################
#AVG
ps -ef | grep "avg" > /tmp/tmp.txt
if grep "/opt/avg/av/bin/avgscand" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" 
fi
