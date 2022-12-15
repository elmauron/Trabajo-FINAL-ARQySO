echo ""
echo Bueno día $nombre!
echo ""

while [[ "$opcion" != "x" && "$opcion" != "X" ]];
do
	echo -------------------------------
	echo ""
	echo Seleccione y presione ENTER
	echo ""
	echo "- Horario {Presione 1}"
	echo "- Clima {Presione 2}"
	echo ""
	echo "Presione "x" para salir..."
	echo ""
	read -t 1 -n 1000 discard
	read opcion

	sleep 1	


	case $opcion in 

		"1")
			echo ""
			echo Son las: "$(date +'%r')" 

	;;	
		"2")
			echo ""
			echo "$(curl wttr.in/bhi?Am0)"
	;;		
		"x"|"X")
		        echo ""	
			echo adiós...
	;;		
		*)
			echo ""
			echo Presionaste cualquier cosa, salame...
	;;
	esac
done
