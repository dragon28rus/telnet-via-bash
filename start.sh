#!/bin/bash

ip=1 #начальный ip 
nas_start=1 #с какого наса начинаем обрабатывать
nas_stop=2	# по какой нас обрабатывем 

while [ $nas_start -ne $nas_stop ]
do
	while [ $ip -ne 255 ]
	do
		if ping -w 1 -i 0.1 10.99.$nas_start.$ip &> /dev/null
			then
				echo "10.99.$nas_start.$ip connected" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/ping.log
				echo "Опрос свича 10.99.$nas_start.$ip"
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'DES-3200'
					then
					echo "10.99.$nas_start.$ip DES-3200" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'DES-3528'
					then
					echo "10.99.$nas_start.$ip DES-3528" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2995G'
					then
					echo "10.99.$nas_start.$ip SNR-S2995G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2990G'
					then
					echo "10.99.$nas_start.$ip SNR-S2990G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2985G-48T'
					then
					echo "10.99.$nas_start.$ip SNR-S2985G-48T" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2985G'
					then
					echo "10.99.$nas_start.$ip SNR-S2985G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2982G'
					then
					echo "10.99.$nas_start.$ip SNR-S2982G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2980G'
					then
					echo "10.99.$nas_start.$ip SNR-S2980G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2965'
					then
					echo "10.99.$nas_start.$ip SNR-S2965" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2960-48G'
					then
					echo "10.99.$nas_start.$ip SNR-S2960-48G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2960-24G'
					then
					echo "10.99.$nas_start.$ip SNR-S2960-24G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2950-24G'
					then
					echo "10.99.$nas_start.$ip SNR-S2950-24G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2940-8G-v2'
					then
					echo "10.99.$nas_start.$ip SNR-S2940-8G-v2" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2940-8G'
					then
					echo "10.99.$nas_start.$ip SNR-S2940-8G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'Orion Alpha A26 Device'
					then
					echo "10.99.$nas_start.$ip Orion Alpha A26 Device" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
			else
				echo "10.99.$nas_start.$ip not connected" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/no_ping.log
				
				#/mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet/SNTP/scripts/snmp_01.sh $ip $nas 
		fi
	ip=$[ip+1]
	done
ip=1
nas_start=$[nas_start+1]
done
