#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./set-web2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de set-web en el conky
#------------------------------------------------------------------------------------
#####################################################
#set-web
ps -ef | grep "set" > /tmp/tmp.txt
if grep "/usr/bin/python ./set" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]"  > /dev/null 2>&1
	else
		print "[DOWN]"  
fi
