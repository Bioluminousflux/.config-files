#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./conky.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de de todos los servicios
#    de bugtraq en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#Apache2
if /etc/init.d/apache2 status | grep "NOT running" > /dev/null 2>&1
	then
		print "Apache                                    [DOWN]" 
	else
		print "Apache                                    [UP]" > /dev/null 2>&1
fi
###################################################################################################
#Autopsy
ps -ef | grep "autopsy" > /tmp/tmp.txt
if grep "/usr/bin/autopsy" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "Autopsy                                   [UP]" > /dev/null 2>&1
        else
                print "Autopsy                                  [DOWN]"
fi
###################################################################################################
#Beef
ps -ef | grep "beef" > /tmp/tmp.txt
if grep "ruby beef" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "Beef                                         [UP]" > /dev/null 2>&1
        else
                print "Beef                                         [DOWN]"
fi
###################################################################################################
#Bluetooth
if /etc/init.d/bluetooth status | grep "is not running" > /dev/null 2>&1

	then
		print "Bluetooth                               [DOWN]"
        else
                print "Bluetooth                                 [UP]" > /dev/null 2>&1
fi
###################################################################################################
#I2P
ps -ef | grep "i2p" > /tmp/tmp.txt
if grep "/etc/i2p/wrapper.config" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "I2P                                           [UP]" > /dev/null 2>&1
        else
                print "I2P                                           [DOWN]"
fi
###################################################################################################
#Metasploit
ps -ef | grep "metasploit" > /tmp/tmp.txt
if grep "/opt/metasploit" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "Metasploit                              [UP]" > /dev/null 2>&1
        else
                print "Metasploit                              [DOWN]"
fi
###################################################################################################
#MLDonkey
ps -ef | grep "ml" > /tmp/tmp.txt
if grep "mldonkey" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "MlDonkey                               [UP]" > /dev/null 2>&1
        else
                print "MlDonkey                               [DOWN]"
fi
###################################################################################################
#Nessus
ps -ef | grep "nessus" > /tmp/tmp.txt
if grep "/opt/nessus/sbin/nessus-service -D -q" /tmp/tmp.txt > /dev/null 2>&1;

	then
		print "Nessus                                     [UP]" > /dev/null 2>&1
	else
		print "Nessus                                    [DOWN]"
fi
###################################################################################################
#Openvas
if /etc/init.d/openvas-server status | grep "not running" > /dev/null 2>&1

	then
		print "OpenVAS                               [DOWN]"
fi
if /etc/init.d/openvas-server status | grep "is running" > /dev/null 2>&1
	then
		print "OpenVAS                               [UP]" > /dev/null 2>&1
	else
		print "OpenVAS                                [DOWN]"
fi
###################################################################################################
#Snort
ps -ef | grep "snort" > /tmp/tmp.txt
if grep "/usr/local/snort" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "Snort                                       [UP]" > /dev/null 2>&1
        else
                print "Snort                                       [DOWN]"
fi
###################################################################################################
#Privoxy
if /etc/init.d/privoxy status | grep "is not running" > /dev/null 2>&1

	then
		print "Privoxy                                   [DOWN]"

	else
		print "Privoxy                                   [UP]" > /dev/null 2>&1
fi
###################################################################################################
#TOR
ps -ef | grep "tor" > /tmp/tmp.txt
if grep "/usr/sbin/tor" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "TOR                                         [UP]" > /dev/null 2>&1

	else
		print "TOR                                         [DOWN]"
fi
###################################################################################################
#Webgoat
ps -ef | grep "webgoat" > /tmp/tmp.txt
if grep "/bin/sh ./webgoat.sh start8080" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "Webgoat                                 [UP]" > /dev/null 2>&1

	else
		print "Webgoat                                 [DOWN]"
fi
###################################################################################################
#Virtualbox
if /etc/init.d/vboxdrv status | grep "not loaded" > /dev/null 2>&1

        then
                print "Virtual Box                             [DOWN]"
        else
                print "Virtual Box                             [UP]" > /dev/null 2>&1
fi
###################################################################################################
#VMware
if /etc/init.d/vmware status | grep "not loaded" > /dev/null 2>&1

	then
		print "VMware                                   [DOWN]"
fi
if /etc/init.d/vmware status | grep "vmmon loaded" > /dev/null 2>&1

	then
		print "VMware                                    [UP]" > /dev/null 2>&1
	else
		print "VMware                                  [DOWN]"
fi
###################################################################################################
#Xplico
if ps -ef | grep xplico | grep root > /dev/null 2>&1
        then
                print "Xplico                                        [UP]" > /dev/null 2>&1
        else 
                print "Xplico                                      [DOWN]"
fi
