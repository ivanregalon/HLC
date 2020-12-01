#!/bin/bash
#Titulo: scriptcopia
#Descripcion: 
#Fecha: 10-11-20
#Creador: Iván Regalón Hernández

origen=$1
destino=$2

if [ "$#" -lt 2 ]
then
	echo "No ha usado la sintaxis correcta: script_copia_10-11-20.sh file1.txt file2.txt"
	
	if [ -z "$origen" ]
	then
		echo "Introduzca fichero de origen:"
		read origen
	fi
	
	if [ -z "$destino" ]
	then
		echo "Introduzca fichero de destino:"
		read destino
	fi
fi

if [ ! -f "$origen" ]
then
	echo "El fichero origen $origen no existe"
elif [ -f "$destino" ]
then
	PREG=0
	while [ "0" -eq ${PREG} ];
	do
		PREG=1
		echo "¿Desea sobreescribir? (S/N)"
		read RESP
		
		case ${RESP} in
			s | S)
			echo "Realizando la copia de $origen en $destino"
			cp "$origen" "$destino"
			;;
			n | N)
			echo "No copiado/Abortado..."
			exit 0
			;;
			*)
			echo "Opcion Incorrecta"
			echo "Pulse Intro para Continuar"
			read REPLY
			PREG=0
			;;
		esac
	done
else
	echo "Realizando la copia de $origen en $destino"
	cp $origen $destino
fi
		
		
		
		
		
		
		
		
		
	
	
	
