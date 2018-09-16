#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./nod1.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del nod32 en el conky
#------------------------------------------------------------------------------------
#####################################################
#Eset Nod 32
ps -ef | grep "eset" > /tmp/tmp.txt
if grep -e "/opt/eset/esets/sbin/esets_scan" -e  "/opt/eset/esets/sbin/esets_daemon" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "[UP]" 
fi
