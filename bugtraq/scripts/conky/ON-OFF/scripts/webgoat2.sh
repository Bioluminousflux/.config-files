#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./webogoat2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del webgoat en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#Webgoat
ps -ef | grep "webgoat" > /tmp/tmp.txt
if grep "/bin/sh ./webgoat.sh start8080" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" 

	else
		print "[DOWN]" > /dev/null 2>&1
fi
