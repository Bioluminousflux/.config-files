#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./virtual2.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado del virtual box en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#Virtualbox
if /etc/init.d/vboxdrv status | grep "are" > /dev/null 2>&1
 then
  print "[UP]" 
fi
