#!/bin/bash
#Titulo: menu
#Descripcion: 
#Fecha: 10-11-20
#Creador: Iván Regalón Hernández

#Bucle
while :
do
	clear
	echo "1. Realizar copia de seguridad"
	echo "2. Restaurar copia de seguridad"
	echo "3. Salir"
	echo "Elija una opcion: "
	read opcion
	case $opcion in
		1)
		echo "Va a realizar una copia de seguridad"
		;;
		2)
		echo "Va a restaurar una copia de seguridad"
		;;
		3)
		echo "Hasta otra!"
		break
		;;
		*)
		echo "Opcion Incorrecta..."
	esac
	read -p "Presione Enter"


done
