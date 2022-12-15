aleatorio=$(( $RANDOM % 50 + 1 ))
contador=0

echo -------------------------- Bienvenido al adivinador Shell ---------------------------------
echo -Debe adivinar el número generado aleatorio del 1 al 50 en menos de 10 intentos para ganar-
echo -------------------------------------------------------------------------------------------
sleep 0

while [ "$numero" != "$aleatorio" ];
do
	if [ "$contador" -ge "10" ];
	then 
		sleep 2
		echo "<><><><> Sos malisimo flaco, anda pallá <><><><>"
		break  
	fi

	echo ==============================
	echo Ingrese un número del 1 al 50
	read -t 1 -n 1000 discard 
	read numero
	echo ==============================

	sleep 2
		
	if [[ "$numero" -ge "1" && "$numero" -le "50" ]]; 
	then

		if [ $numero -gt $aleatorio ]; 
		then
			echo "- Me parece que el número aleatorio es más bajo -"
		fi

		if [ $numero -lt $aleatorio ];
		then 
			echo "- Me parece que el número aleatorio es más alto -"
		fi

	else 
		echo "FLACO, le mandaste cualquiera..."	
	fi	

	sleep 2


	let contador=contador+1
	echo " "
	echo "-------------------------------------------------"
	echo "------- número de intentos hasta ahora: $contador -------"
	echo "-------------------------------------------------"
	echo " "

	sleep 2

done	
	
	
if [ "$numero" -eq "$aleatorio" ];
then 
			
	if [ "$contador" -le "5" ]; 
	then 
		echo "#### FELICITACIONES!! ENTRASTE EN EL 2% DE PERSONAS EN ADIVINAR EL NÚMERO EN MENOS DE CINCO INTENTOS ####"
	fi

	if [[ "$contador" -gt "5" && "$contador" -le "10" ]]; 
	then 
		echo "#### MUY BIEN!! GANASTE, EL NÚMERO ALEATORIO ERA $aleatorio !! ####"
	fi		
					
fi

