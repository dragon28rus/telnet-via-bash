#!/bin/bash

ip=99
nas=1

while [ $ip -ne 100 ]
do
	if ping 10.99.1.$ip -c 4 | grep '100% packet loss'
		then
			echo "swich 10.99.1.$ip not connected" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet/SNTP/scripts/log/ping/not_connect.log
		else
			echo "swich 10.99.1.$ip is connected" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet/SNTP/scripts/log/ping/connect.log
			if snmpwalk -v2c -c protected 10.99.1.$ip .1.3.6.1.2.1.1.1.0 | grep 'DES-3200'
				then
				.... # действие
			fi
			if snmpwalk -v2c -c protected 10.99.1.$ip .1.3.6.1.2.1.1.1.0 | grep 'DES-3528'
				then
				.... #действие
			fi
			if snmpwalk -v2c -c protected 10.99.1.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2995G'
				then
				.... #действие
			fi
			if snmpwalk -v2c -c protected 10.99.1.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2990G'
				then
				.... #действие
			fi
			if snmpwalk -v2c -c protected 10.99.1.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2985G'
				then
				.... #действие
			fi
			if snmpwalk -v2c -c protected 10.99.1.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2982G'
				then
				.... #действие
			fi
			if snmpwalk -v2c -c protected 10.99.1.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2980G'
				then
				.... #действие
			fi
			if snmpwalk -v2c -c protected 10.99.1.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2965'
				then
				.... #действие
			fi
			if snmpwalk -v2c -c protected 10.99.1.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2960-48G'
				then
				.... #действие
			fi
			if snmpwalk -v2c -c protected 10.99.1.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2960-24G'
				then
				.... #действие
			fi
			if snmpwalk -v2c -c protected 10.99.1.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2950-24G'
				then
				.... #действие
			fi
			if snmpwalk -v2c -c protected 10.99.1.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2940-8G-v2'
				then
				.... #действие
			fi
			if snmpwalk -v2c -c protected 10.99.1.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2940-8G'
				then
				.... #действие
			fi
			
			/mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet/SNTP/scripts/snmp_01.sh $ip $nas
	fi
ip=$[ip+1]
done
