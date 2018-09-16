#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./avira1.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de avira en el conky
#####################################################
#AVAST
ps -ef | grep "guard" > /tmp/tmp.txt
if grep -e "/guard/scancl" -e "/guard/avupdate-guard" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" 
fi
