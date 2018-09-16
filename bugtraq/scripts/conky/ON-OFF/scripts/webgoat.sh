#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./webgoat.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del webgoaten el conky
#------------------------------------------------------------------------------------
###################################################################################################
#Webgoat
ps -ef | grep "webgoat" > /tmp/tmp.txt
if grep "/bin/sh ./webgoat.sh start8080" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" > /dev/null 2>&1

	else
		print "[DOWN]"
fi
