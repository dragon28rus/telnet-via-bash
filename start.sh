#!/bin/bash

ip=1 #начальный ip 
nas_start=1 #с какого наса начинаем обрабатывать
nas_stop=4	# по какой нас обрабатывем 

while [ $nas_start -ne $nas_stop ]
	while [ $ip -ne 100 ]
	do
		if ping 10.99.$nas_start.$ip -c 4 | grep '100% packet loss'
			then
				echo "swich 10.99.$nas_start.$ip not connected" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/ping/log.log
			else
				echo "swich 10.99.$nas_start.$ip is connected" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/ping/log.log
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'DES-3200'
					then
					echo "swich 10.99.$nas_start.$ip is DES-3200" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'DES-3528'
					then
					echo "swich 10.99.$nas_start.$ip is DES-3528" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2995G'
					then
					echo "swich 10.99.$nas_start.$ip is SNR-S2995G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2990G'
					then
					echo "swich 10.99.$nas_start.$ip is SNR-S2990G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2985G'
					then
					echo "swich 10.99.$nas_start.$ip is SNR-S2985G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2982G'
					then
					echo "swich 10.99.$nas_start.$ip is SNR-S2982G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2980G'
					then
					echo "swich 10.99.$nas_start.$ip is SNR-S2980G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2965'
					then
					echo "swich 10.99.$nas_start.$ip is SNR-S2965" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2960-48G'
					then
					echo "swich 10.99.$nas_start.$ip is SNR-S2960-48G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2960-24G'
					then
					echo "swich 10.99.$nas_start.$ip is SNR-S2960-24G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2950-24G'
					then
					echo "swich 10.99.$nas_start.$ip is SNR-S2950-24G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2940-8G-v2'
					then
					echo "swich 10.99.$nas_start.$ip is SNR-S2940-8G-v2" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if snmpwalk -v2c -c protected 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | grep 'SNR-S2940-8G'
					then
					echo "swich 10.99.$nas_start.$ip is SNR-S2940-8G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				
				#/mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet/SNTP/scripts/snmp_01.sh $ip $nas 
		fi
	ip=$[ip+1]
	done
ip=1
nas_start=$[nas_start+1]
done
	