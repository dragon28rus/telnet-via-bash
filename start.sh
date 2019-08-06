#!/bin/bash

ip=11 #начальный ip 
nas_start=1 #с какого наса начинаем обрабатывать
nas_stop=2	# по какой нас обрабатывем 
snmp_ro=unprotected

while [ $nas_start -ne $nas_stop ]
do
	while [ $ip -ne 13 ]
	do
		if ping -w 1 -i 0.1 10.99.$nas_start.$ip &> /dev/null
			then
				echo "10.99.$nas_start.$ip connected" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/ping.log
				echo "Опрос свича 10.99.$nas_start.$ip"
				RESULT=$(snmpwalk -v2c -c $snmp_ro 10.99.$nas_start.$ip .1.3.6.1.2.1.1.1.0 | awk '{print $4}')  
				
				if [[ $RESULT == *"DES"* ]] || [[ $RESULT == *"DGS"* ]]; #проверка на соответствие D-link
					if [[ $RESULT == *"DES-3528"* ]];
						then
						echo "10.99.$nas_start.$ip DES-3528" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
					fi
					if [[ $RESULT == *"DES-3200"* ]];
						then
						echo "10.99.$nas_start.$ip DES-3200" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
					fi
					if [[ $RESULT == *"DGS-3000-26TC"* ]]
						then
						echo "10.99.$nas_start.$ip DGS-3000-26TC" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
					fi
					if [[ $RESULT == *"DGS-3420-28SC"* ]]
						then
						echo "10.99.$nas_start.$ip DGS-3420-28SC" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
					fi
					then
						#echo "10.99.$nas_start.$ip DES-3200" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
					
				if [[ $RESULT == *"SNR-S2995G"* ]]
					then
					echo "10.99.$nas_start.$ip SNR-S2995G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if [[ $RESULT == *"SNR-S2990G"* ]]
					then
					echo "10.99.$nas_start.$ip SNR-S2990G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if [[ $RESULT == *"SNR-S2985G-48T"* ]]
					then
					echo "10.99.$nas_start.$ip SNR-S2985G-48T" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				elif [[ $RESULT == *"SNR-S2985G"* ]]
					then
					echo "10.99.$nas_start.$ip SNR-S2985G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if [[ $RESULT == *"SNR-S2982G"* ]]
					then
					echo "10.99.$nas_start.$ip SNR-S2982G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if [[ $RESULT == *"SNR-S2980G"* ]]
					then
					echo "10.99.$nas_start.$ip SNR-S2980G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if [[ $RESULT == *"SNR-S2965"* ]]
					then
					echo "10.99.$nas_start.$ip SNR-S2965" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if [[ $RESULT == *"SNR-S2960-48G"* ]]
					then
					echo "10.99.$nas_start.$ip SNR-S2960-48G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if [[ $RESULT == *"SNR-S2960-24G"* ]]
					then
					echo "10.99.$nas_start.$ip SNR-S2960-24G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if [[ $RESULT == *"SNR-S2950-24G"* ]]
					then
					echo "10.99.$nas_start.$ip SNR-S2950-24G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if [[ $RESULT == *"SNR-S2940-8G-v2"* ]]
					then
					echo "10.99.$nas_start.$ip SNR-S2940-8G-v2" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if [[ $RESULT == *"SNR-S2940-8G"* ]]
					then
					echo "10.99.$nas_start.$ip SNR-S2940-8G" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi
				if [[ $RESULT == *"Orion Alpha A26 Device"* ]]
					then
					echo "10.99.$nas_start.$ip Orion Alpha A26 Device" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
				fi

				if [[ $RESULT == *"SNR-S300G-24FX"* ]]
					then
					echo "10.99.$nas_start.$ip SNR-S300G-24FX" >> /mnt/c/Users/dragon28rus/YandexDisk/Документы/Проекты/telnet-via-bash/log/hardware.log # действие
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
