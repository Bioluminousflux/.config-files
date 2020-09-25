#!/bin/bash


redirect="!TOR!I2P-HTTP!I2P-HTTPS!POLIPO!JONDO"
configure="!Tor!I2p!Polipo!Privoxy!Proxychains"
useragent=`cat /etc/privoxy/user-agent.action | grep +hide-user-agent | sed 's/+hide-user-agent/User Agent: /g'`

function action(){

 yad --form --field Services:chk --field Network_and_Proxys:chk --field Connections:chk  --field Iptables:chk 'true' false '' false '' false '' false > res1 \
    --window-icon="/bugtraq/icons/black-widow-icon3.png" --button="Quit:4" --button="Stop All:5" --button="Launch:6"--buttons-layout=edge \
    --title="Conky Manager" --fixed --width=400 --height=300
}

action
ret=$? 
echo $ret

if [[ $ret -eq 4 ]]; then
exit 0
fi

if [[ $ret -eq 5 ]]; then
echo $ret
PROC=`ps -ef | grep conky | head -n1 | awk '{print $2}'`
gksu kill -9 $PROC &
gksu pkill conky &
fi


if [[ $ret -eq 6 ]] ; then

cat res1 | awk -F "\|" '{print $1}' > services

if cat services | grep TRUE
	then
		conky -c /bugtraq/scripts/conky/.conkyrc &
fi

cat res1 | awk -F "\|" '{print $2}' > network
if cat network | grep TRUE
	then
		conky -c /bugtraq/scripts/conky/proxys.conf &
fi
cat res1 | awk -F "\|" '{print $3}' > connections
if cat connections | grep TRUE
	then
		conky -c /bugtraq/scripts/conky/connections.conf &
fi

cat res1 | awk -F "\|" '{print $4}' > iptables
if cat iptables | grep TRUE
	then
		gksu 'conky -c /bugtraq/scripts/conky/iptables.conf'
fi
fi

