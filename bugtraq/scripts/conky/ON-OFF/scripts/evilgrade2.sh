#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./evilgrade2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del evilgrade en el conky
#------------------------------------------------------------------------------------
#####################################################
#evilgrade
ps -ef | grep "evilgrade" > /tmp/tmp.txt
if grep "/usr/bin/perl ./evilgrade" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" > /dev/null 2>&1
	else
		print "[DOWN]"  
fi
