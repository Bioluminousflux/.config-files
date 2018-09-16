#!/usr/bin/ksh
#------------------------------------------------------------------------------------
# - Nombre: ./conky4.sh 
# - Version: 1.0
# - Fecha: 26/11/2011
# - Creador: Bugtraq-Team
# - descripción: Este script comprueba el estado de los servicios de bugtraq
#     en el conky
#------------------------------------------------------------------------------------
###################################################################################################
#Apache2
if /etc/init.d/apache2 status | grep "NOT running" > /dev/null 2>&1
	then
		print "Apache                                    [DOWN]"  > /dev/null 2>&1
	else
		print "Apache                                    [UP]"
fi
###################################################################################################
#Autopsy
ps -ef | grep "autopsy" > /tmp/tmp.txt
if grep "/usr/bin/autopsy" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "Autopsy                                   [UP]"
        else
                print "Autopsy                                  [DOWN]" > /dev/null 2>&1
fi
###################################################################################################
#Beef
ps -ef | grep "beef" > /tmp/tmp.txt
if grep "ruby beef" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "Beef                                         [UP]"
        else
                print "Beef                                         [DOWN]" > /dev/null 2>&1
fi
###################################################################################################
#Bluetooth
if /etc/init.d/bluetooth status | grep "is not running" > /dev/null 2>&1

	then
		print "Bluetooth                               [DOWN]" > /dev/null 2>&1
        else
                print "Bluetooth                                 [UP]"
fi
###################################################################################################
#I2P
ps -ef | grep "i2p" > /tmp/tmp.txt
if grep "/etc/i2p/wrapper.config" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "I2P                                           [UP]"
        else
                print "I2P                                           [DOWN]" > /dev/null 2>&1
fi
###################################################################################################
#Metasploit
ps -ef | grep "metasploit" > /tmp/tmp.txt
if grep "/opt/metasploit" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "Metasploit                              [UP]"
        else
                print "Metasploit                              [DOWN]" > /dev/null 2>&1
fi
###################################################################################################
#MLDonkey
ps -ef | grep "ml" > /tmp/tmp.txt
if grep "mldonkey" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "MlDonkey                               [UP]"
        else
                print "MlDonkey                               [DOWN]" > /dev/null 2>&1
fi
###################################################################################################
#Nessus
if ps -ef | grep "nessusd -q" | grep root > /dev/null 2>&1

	then
		print "Nessus                                     [UP]"
	else
		print "Nessus                                    [DOWN]" > /dev/null 2>&1
fi
###################################################################################################
#Openvas
if /etc/init.d/openvas-server status | grep "not running" > /dev/null 2>&1

	then
		print "OpenVAS                               [DOWN]" > /dev/null 2>&1
fi
if /etc/init.d/openvas-server status | grep "is running" > /dev/null 2>&1
	then
		print "OpenVAS                               [UP]"
	else
		print "OpenVAS                                [DOWN]" > /dev/null 2>&1
fi
###################################################################################################
#Snort
ps -ef | grep "snort" > /tmp/tmp.txt
if grep "/usr/local/snort" /tmp/tmp.txt > /dev/null 2>&1;

        then
                print "Snort                                       [UP]"
        else
                print "Snort                                       [DOWN]" > /dev/null 2>&1
fi
###################################################################################################
#Privoxy
if /etc/init.d/privoxy status | grep "is not running" > /dev/null 2>&1

	then
		print "Privoxy                                   [DOWN]" > /dev/null 2>&1

	else
		print "Privoxy                                   [UP]"
fi
###################################################################################################
#TOR
ps -ef | grep "tor" > /tmp/tmp.txt
if grep "/usr/sbin/tor" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "TOR                                         [UP]"

	else
		print "TOR                                         [DOWN]" > /dev/null 2>&1
fi
###################################################################################################
#Webgoat
ps -ef | grep "webgoat" > /tmp/tmp.txt
if grep "/bin/sh ./webgoat.sh start8080" /tmp/tmp.txt > /dev/null 2>&1;
	then
		print "Webgoat                                 [UP]"

	else
		print "Webgoat                                 [DOWN]" > /dev/null 2>&1
fi
###################################################################################################
#Virtualbox
if /etc/init.d/vboxdrv status | grep "not loaded" > /dev/null 2>&1

        then
                print "Virtual Box                             [DOWN]" > /dev/null 2>&1
        else
                print "Virtual Box                             [UP]"
fi
###################################################################################################
#VMware
if /etc/init.d/vmware status | grep "not loaded" > /dev/null 2>&1

	then
		print "VMware                                   [DOWN]" > /dev/null 2>&1
fi
if /etc/init.d/vmware status | grep "vmmon loaded" > /dev/null 2>&1

	then
		print "VMware                                    [UP]"
	else
		print "VMware                                  [DOWN]" > /dev/null 2>&1
fi
###################################################################################################
#Xplico
if ps -ef | grep xplico | grep root > /dev/null 2>&1
        then
                print "Xplico                                        [UP]"
        else 
                print "Xplico                                      [DOWN]" > /dev/null 2>&1
fi
